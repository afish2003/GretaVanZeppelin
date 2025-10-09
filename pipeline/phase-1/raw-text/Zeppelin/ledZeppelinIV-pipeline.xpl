<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" exclude-inline-prefixes="#all"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ex="extensions"
    xmlns:cx="http://xmlcalabash.com/ns/extensions" xmlns:c="http://www.w3.org/ns/xproc-step"
    version="3.0">
    <!-- ================================================================ -->
    <!-- Static options                                                   -->
    <!-- Morgana: -static:debug=true                                      -->
    <!-- XML Calabash: debug="?true()"                                    -->
    <!-- to implement, use attribute: use-when="$debug"                   -->
    <!-- ================================================================ -->
    <p:option name="debug" as="xs:boolean" static="true" select="false()"/>

    <p:directory-list name="sourceColl" path="ledZeppelinIV"
        include-filter="song-[0-9][0-9]?.txt"
        detailed="true"/>
    
    <p:for-each>
        
        <p:with-input select="//c:file"/>
        <!-- ebb: Don't worry. The above line is NOT a literal filepath. It's just XProc-speak for each individual file in the directory. -->
        <p:variable name="filename" as="xs:string" select="//c:file/@name ! substring-before(., '.txt')"/>
        
        <p:load href="ledZeppelinIV/{//c:file/@name}"/>
    
        <p:identity message="Fetched plain text input from {$filename}"/>
        
        <!-- ================================================================ -->
        <!-- Add structural markup with ixml                                  -->
        <!-- Calabash will use Markup Blitz instead of default CoffeePot      -->
        <!--   (input is too large for efficient processing with CoffeePot)   -->
        <!-- ================================================================ -->
        <p:invisible-xml cx:processor="markup-blitz">
            <p:with-input port="grammar">
                <p:document href="../../InvisibleXML.ixml" content-type="text/plain"/>
            </p:with-input>
        </p:invisible-xml>
        <p:identity use-when="$debug" message="Added markup with ixml"/>
        <p:store name="simple-XML" href="../../ixml-output/Zeppelin/ledZeppelinIV/{$filename}.xml"/>
        
        <!-- ================================================================ -->
        <!-- Finish markup with XSLT                                          -->
        <!-- ================================================================ -->
        <p:xslt>
            <p:with-input port="stylesheet" href="../../full-markup.xsl"/>
        </p:xslt>
        
        <p:xslt>
            <p:with-input port="stylesheet" href="../../chordsToNumbers.xsl"/>
        </p:xslt>
        
        <p:identity message="Running the Identity Transformation XSLT to develop the XML"/>
        
        <!-- ================================================================ -->
        <!-- Output finalized XML                                             -->
        <!-- ================================================================ -->
        <p:store name="full-xml-out" href="../../full-xml-output/Zeppelin/ledZeppelinIV/{$filename}.xml" serialization="map {
            'method' : 'xml',
            'indent' : true(),
            'omit-xml-declaration' : false()
            }"/>
        <p:identity message="Saved finalized XML for {$filename}"/>
        
        <!-- ================================================================ -->
        <!-- Output plain lyrics                                              -->
        <!-- ================================================================ -->
        <p:xslt>
            <p:with-input port="stylesheet" href="../../pullLyrics.xsl"/>
        </p:xslt>
        
        <p:store name="plain-lyrics-out" href="../../plain-lyrics-output/Zeppelin/ledZeppelinIV/{$filename}.txt" />
        <p:identity message="Saved plain lyrics for {$filename}"/>
        
        <!-- ================================================================ -->
        <!-- Output just chord progressions                                   -->
        <!-- ================================================================ -->
        <p:xslt>
            <p:with-input port="source">
                <p:pipe step="full-xml-out" port="result"/>
            </p:with-input>
            <p:with-input port="stylesheet" href="../../chordProgressions.xsl"/>
        </p:xslt>
        
        <p:store name="chord-progressions-out" href="../../chord-progressions-output/Zeppelin/ledZeppelinIV/{$filename}.txt" />
        <p:identity message="Saved chord progressions for {$filename}"/>
    </p:for-each>
    
</p:declare-step>

