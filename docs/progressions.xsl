<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="html">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Chord Progressions</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1>Chord Progressions</h1>
                
                <xsl:for-each select="//section">
                    <xsl:variable name="sectionTitle" select="@type"/>
                    <h2><xsl:value-of select="$sectionTitle"/></h2>
                    
                    <!-- Chord Buttons for Each Section -->
                    <div class="chord-container">
                        <xsl:for-each select=".//chord">
                            <button class="chord-button">
                                <xsl:value-of select="@num"/>
                            </button>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
