<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output method="xml" indent="yes"/>    
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="mdiv">
        <xsl:analyze-string select="." regex="\n(\s*([A-Z][#ba-z/0-9]*) *([A-Z][#ba-z/0-9]*)?)*\n">
            <xsl:matching-substring>
                <chordLine>
                    <xsl:for-each select="tokenize(., '\s+')">
                        <xsl:if test="current() ! matches(., '\S')">
                            <chord><xsl:value-of select="current()"/></chord>
                        </xsl:if>
                    </xsl:for-each>
                </chordLine>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <lyrics>
                    <xsl:value-of select=". ! normalize-space()"/>                
                </lyrics>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
        
        
        
    </xsl:template>
    
</xsl:stylesheet>