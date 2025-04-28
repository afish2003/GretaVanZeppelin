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
    <!-- Adds chord numbers (Nashville Number System) as attributes to each chord -->
    
    <!-- This is not a comprehensive list of every chord in every key.
         Given the time constraints of the project, chords were only added
         as they came up in these songs.-->
    
   <xsl:template match="chord">
       <xsl:choose>
           
           <!-- ================================================================ -->
           <!-- A                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'A'">
               <xsl:if test=". = 'A'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#m'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#m'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- B                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'B'">
               <xsl:if test=". = 'B'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#m'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D#'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D#m'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G#'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G#m'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- C                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'C'">
               <xsl:if test=". = 'C'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Ab'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- E                                                                -->
           <!-- ================================================================ -->
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
           
           <!-- ================================================================ -->
           <!-- F                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'F'">
               <xsl:if test=". = 'F'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- G                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'G'">
               <xsl:if test=". = 'G'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dadd4add9'">
                   <chord num="5add4add9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <xsl:otherwise>
               <xsl:copy-of select="."/>
           </xsl:otherwise>
           
       </xsl:choose>
       
       
       
   </xsl:template>
    
</xsl:stylesheet>