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
               <xsl:if test=". = 'B7'">
                   <chord num="2^7"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Dsus2'">
                   <chord num="4sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Esus4'">
                   <chord num="5sus4"><xsl:apply-templates/></chord>
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
           <!-- Bb                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'Bb'">
               <xsl:if test=". = 'Bb'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="b5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gb'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Ab'">
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
               <xsl:if test=". = 'Cmaj7'">
                   <chord num="1maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D/A'">
                   <chord num="2/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/E'">
                   <chord num="1/3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E7'">
                   <chord num="3^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em/A'">
                   <chord num="3m/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fmaj7'">
                   <chord num="4maj7"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Am7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm(b9)'">
                   <chord num="7m(b9)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm/D'">
                   <chord num="7m/2"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- D                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'D'">
               <xsl:if test=". = 'D'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dadd11'">
                   <chord num="1add11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="1m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="b2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E/D'">
                   <chord num="2/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em7'">
                   <chord num="2m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em/D'">
                   <chord num="2m/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="b3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#m'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gmaj7'">
                   <chord num="4maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G6'">
                   <chord num="4^6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gsus2'">
                   <chord num="4sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A7'">
                   <chord num="5^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus2'">
                   <chord num="5sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="5m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb6'">
                   <chord num="b6^6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bmadd11'">
                   <chord num="6madd11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Csus2'">
                   <chord num="b7sus2"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- Eb                                                               -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'Eb'">
               <xsl:if test=". = 'Eb'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb/Bb'">
                   <chord num="1/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fsus2'">
                   <chord num="2sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fm'">
                   <chord num="2m/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm/Bb'">
                   <chord num="3m/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Ab'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Abmaj7/C'">
                   <chord num="4maj7/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Adim/Eb'">
                   <chord num="b5dim/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb7sus4'">
                   <chord num="5^7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb7'">
                   <chord num="5^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cm'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cm/G'">
                   <chord num="6m/3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C7'">
                   <chord num="6^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Db(b5)/Ab'">
                   <chord num="b7(b5)/4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm7add11'">
                   <chord num="7m7add11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- E                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'E'">
               <xsl:if test=". = 'E'">
                  <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em7'">
                   <chord num="1m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#m'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G5'">
                   <chord num="b3^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A5'">
                   <chord num="4^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="4m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D5'">
                   <chord num="b7^5"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Gsus2'">
                   <chord num="2sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Ab'">
                   <chord num="b3"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'D#/F'">
                   <chord num="b7/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="7m"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- G                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'G'">
               <xsl:if test=". = 'G'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G7'">
                   <chord num="1^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gsus4'">
                   <chord num="1sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus4'">
                   <chord num="2sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B7'">
                   <chord num="3^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/G'">
                   <chord num="4/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dadd4add9'">
                   <chord num="5add4add9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="5m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="6^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D/F#'">
                   <chord num="5/7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <xsl:otherwise>
               <xsl:copy-of select="."/>
           </xsl:otherwise>
           
       </xsl:choose>
       
       
       
   </xsl:template>
    
</xsl:stylesheet>