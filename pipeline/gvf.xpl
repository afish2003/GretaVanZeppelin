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
    <!-- ================================================================ -->
    <!-- Fetch remote plain-text input                                    -->
    <!-- ================================================================ -->
    <p:input port="source" primary="true" sequence="true" content-types="text/plain">
        <p:document href="rawText/fromTheFires/blackSmokeRisingGVF.txt"/>
        <p:document href="rawText/fromTheFires/changeIsGonnaComeGVF.txt"/>
        <p:document href="rawText/fromTheFires/edgeOfDarknessGVF.txt"/>
        <p:document href="rawText/fromTheFires/flowerPowerGVF.txt"/>
        <p:document href="rawText/fromTheFires/highwayTuneGVF.txt"/>
        <p:document href="rawText/fromTheFires/meetOnTheLedgeGVF.txt"/>
        <p:document href="rawText/fromTheFires/safariSongGVF.txt"/>
        <p:document href="rawText/fromTheFires/talkOnTheStreetGVF.txt"/>
    </p:input>
    <!-- ================================================================ -->
    <!-- No pipeline output; use <p:store> instead                        -->
    <!-- ================================================================ -->
    <p:output port="result" primary="true" sequence="true">
        <p:empty/>
    </p:output>
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

    <p:store href="/xml/blackSmokeRisingGVF.xml /xml/changeIsGonnaComeGVF.xml /xml/edgeOfDarknessGVF.xml /xml/flowerPowerGVF.xml /xml/highwayTuneGVF.xml /xml/meetOnTheLedgeGVF.xml /xml/safariSongGVF.xml /xml/talkOnTheStreetGVF.xml" 
        serialization="map {
        'method' : 'xml',
        'indent' : true(),
        'omit-xml-declaration' : false()
        }"/>
    <p:identity use-when="$debug" message="Saved XML"/>
</p:declare-step>

