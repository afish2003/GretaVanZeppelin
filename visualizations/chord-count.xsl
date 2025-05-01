<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <!--XSLT example for outputting a TSV from chord charts 
    Purpose: prepare TSV input for network analysis with Cytoscape.
    This is designed for one chord chart at a time to prepare a network analysis
    visualizing the chart's distribution of chords.
    
    What we're analyzing with XSLT:
    * Take distinct values of uses of chords in each song.
    * Output a count of how many times each chord appears.
   *  Output the song title for use in distinguishing the node types in Cytoscape.
    -->
    
    <xsl:output method="text" indent="no"/>
    
    <xsl:variable name="fromTheFires" as="document-node()+" select="collection('../pipeline/full-xml-output/Greta/fromTheFires/?select=*.xml')"/>
    
    <xsl:variable name="anthemOfThePeacefulArmy" as="document-node()+" select="collection('../pipeline/full-xml-output/Greta/anthemOfThePeacefulArmy/?select=*.xml')"/>
    
    <xsl:variable name="theBattleAtGardensGate" as="document-node()+" select="collection('../pipeline/full-xml-output/Greta/theBattleAtGardensGate/?select=*.xml')"/>
    
    <xsl:variable name="starcatcher" as="document-node()+" select="collection('../pipeline/full-xml-output/Greta/starcatcher/?select=*.xml')"/>
    
    <xsl:variable name="ledZeppelin" as="document-node()+" select="collection('../pipeline/full-xml-output/Zeppelin/ledZeppelin/?select=*.xml')"/>
    
    <xsl:variable name="ledZeppelinII" as="document-node()+" select="collection('../pipeline/full-xml-output/Zeppelin/ledZeppelinII/?select=*.xml')"/>
    
    <xsl:variable name="ledZeppelinIII" as="document-node()+" select="collection('../pipeline/full-xml-output/Zeppelin/ledZeppelinIII/?select=*.xml')"/>
    
    <xsl:variable name="ledZeppelinIV" as="document-node()+" select="collection('../pipeline/full-xml-output/Zeppelin/ledZeppelinIV/?select=*.xml')"/>
    
    <xsl:variable name="tab" as="xs:string">
        <xsl:text>&#x9;</xsl:text>
    </xsl:variable>
    
    <xsl:variable name="newline" as="xs:string">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
    
    <xsl:template match="/">
       
        <!-- ebb: Column headings -->
        <xsl:text>chord</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>chordCount</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>songTitle</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>key</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>artist</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>album</xsl:text>
        <xsl:value-of select="$newline"/>
        
        <xsl:for-each select="$fromTheFires">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$anthemOfThePeacefulArmy">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$theBattleAtGardensGate">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$starcatcher">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$ledZeppelin">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$ledZeppelinII">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$ledZeppelinIII">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>
        
        <xsl:for-each select="$ledZeppelinIV">
            <xsl:apply-templates select="descendant::music"/>
        </xsl:for-each>

    </xsl:template>
    
    <xsl:template match="music">
        <xsl:variable name="currentSong" as="element()" select="current()"/>
        <xsl:variable name="songTitle" as="xs:string" 
            select="title ! normalize-space()"/>
        <xsl:variable name="artist" as="xs:string" 
            select="artist ! normalize-space()"/>
        <xsl:variable name="album" as="xs:string" 
            select="album ! normalize-space()"/>
        <xsl:variable name="key" as="xs:string" 
            select="key ! normalize-space()"/>
        
        <xsl:for-each select="descendant::chord/@num ! normalize-space() => distinct-values()">
    
                <xsl:value-of select="current() ! normalize-space()"/>
                <xsl:value-of select="$tab"/>
                <!--ebb: count this chord in the song -->
                <xsl:value-of select="$currentSong//chord/@num[. ! normalize-space() = current()] => count()"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$songTitle"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$key"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$artist"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$album"/>
                <xsl:value-of select="$newline"/>
            
        </xsl:for-each>
    </xsl:template>
  
</xsl:stylesheet>