<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ixml="http://invisiblexml.org/NS"
    exclude-result-prefixes="ixml">
    
    <xsl:output method="text" encoding="UTF-8"/>
    
    <!-- Match the root element -->
    <xsl:template match="/mei/music">
        <xsl:for-each select="section">
            <!-- Output the lowercase section type followed by a colon -->
            <xsl:value-of select="lower-case(@type)"/>
            <xsl:text>:</xsl:text>
            <xsl:text>&#10;</xsl:text>
            
            <!-- Loop through all chordLine elements within the section -->
            <xsl:for-each select="chordLine">
                <xsl:text>  </xsl:text> <!-- indent -->
                <!-- Output the num attributes -->
                <xsl:for-each select="chord">
                    <xsl:value-of select="@num"/>
                    <xsl:if test="position() != last()">
                        <xsl:text>, </xsl:text>
                    </xsl:if>
                </xsl:for-each>
                <xsl:text>&#10;</xsl:text>
            </xsl:for-each>
            
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>
