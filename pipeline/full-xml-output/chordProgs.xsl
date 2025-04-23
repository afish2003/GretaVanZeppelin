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
    <!-- 2025-04-18 ebb Adds chord progressions as markup in each song. -->
    
   <xsl:template match="chord">
       <xsl:choose>
           <xsl:when test="preceding::key = 'E'">
               <xsl:if test=". = 'E'">
                  <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               
           </xsl:when>
           
           
        <!--   <xsl:when test=""></xsl:when>
           
           <xsl:when test=""></xsl:when>-->
           
           <xsl:otherwise>
               <xsl:copy-of select="."/>
           </xsl:otherwise>
           
       </xsl:choose>
       
       
       
   </xsl:template>
    
</xsl:stylesheet>