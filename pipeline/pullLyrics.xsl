<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ixml="http://invisiblexml.org/NS"
    exclude-result-prefixes="ixml">
    
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:strip-space elements="*"/>
    
    <!-- Metadata Processing -->
    <xsl:template match="/mei/music">
        <xsl:text>Title: </xsl:text><xsl:value-of select="title"/><xsl:text>&#10;</xsl:text>
        <xsl:text>Album: </xsl:text><xsl:value-of select="album"/><xsl:text>&#10;</xsl:text>
        <xsl:text>Artist: </xsl:text><xsl:value-of select="artist"/><xsl:text>&#10;</xsl:text>
        <xsl:text>Key: </xsl:text><xsl:value-of select="key"/><xsl:text>&#10;&#10;</xsl:text>
        
        <!-- Process each section -->
        <xsl:apply-templates select="section"/>
    </xsl:template>
    
    <!-- Section processing -->
    <xsl:template match="section">
        <xsl:text>[</xsl:text><xsl:value-of select="@type"/><xsl:text>]</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="lyrics"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <!-- Lyrics processing -->
    <xsl:template match="lyrics">
        <xsl:if test="normalize-space(.) != ''">
            <xsl:value-of select="."/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>