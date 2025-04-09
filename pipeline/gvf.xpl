<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" exclude-inline-prefixes="#all"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ex="extensions"
    xmlns:cx="http://xmlcalabash.com/ns/extensions" xmlns:c="http://www.w3.org/ns/xproc-step"
    version="3.0">
    <!-- ================================================================ -->
    <!-- Static options                                                   -->
    <!-- Morgana: -static:debug=true                                      -->
    <!-- XML Calabash: debug="?true()"                                    -->
    <!-- ================================================================ -->
    <p:option name="debug" as="xs:boolean" static="true" select="false()"/>

    <p:directory-list name="sourceColl" path="rawText/fromTheFires"
        include-filter="song-[0-9].txt"
        detailed="true"/>
    
    <p:for-each>
        
        <p:with-input select="//c:file"/>
        <!-- ebb: Don't worry. The above line is NOT a literal filepath. It's just XProc-speak for each individual file in the directory. -->
        <p:variable name="filename" as="xs:string" select="//c:file/@name ! substring-before(., '.txt')"/>
        <p:load href="rawText/fromTheFires/{//c:file/@name}"/>
    
        <p:identity use-when="$debug" message="Fetched plain text input"/>
        <!-- ================================================================ -->
        <!-- Add structural markup with ixml                                  -->
        <!-- Calabash will use Markup Blitz instead of default CoffeePot      -->
        <!--   (input is too large for efficient processing with CoffeePot)   -->
        <!-- ================================================================ -->
        <p:invisible-xml cx:processor="markup-blitz">
            <p:with-input port="grammar">
                <p:document href="gvf.ixml" content-type="text/plain"/>
            </p:with-input>
        </p:invisible-xml>
        <p:identity use-when="$debug" message="Added markup with ixml"/>
    
        <p:store name="simple-XML" href="ixml-output/{$filename}.xml"/>
        
    </p:for-each>
</p:declare-step>

