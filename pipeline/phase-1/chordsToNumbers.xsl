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
           <!-- Ab                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'Ab'">
               <xsl:if test=". = 'Ab'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bbm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cm'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Db'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="b5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb/Bb'">
                   <chord num="5/2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F5'">
                   <chord num="6^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fm'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gb'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- A                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'A'">
               <xsl:if test=". = 'A'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A7'">
                   <chord num="1^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus2'">
                   <chord num="1sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="1m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am7'">
                   <chord num="1m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#'">
                   <chord num="b2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#5'">
                   <chord num="b2^5"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'C'">
                   <chord num="b3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Dsus4'">
                   <chord num="4sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dadd11/A'">
                   <chord num="4add11/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E5'">
                   <chord num="5^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Esus4'">
                   <chord num="5sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em7'">
                   <chord num="5m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em/A'">
                   <chord num="5m/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em9/A'">
                   <chord num="5m9/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F5'">
                   <chord num="b6^5"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'G5'">
                   <chord num="b7^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G7'">
                   <chord num="b7^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm/C'">
                   <chord num="b7/b3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G#7'">
                   <chord num="7^7"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'C5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cmaj7'">
                   <chord num="1maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cb5'">
                   <chord num="1(b5)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C(b5)'">
                   <chord num="1(b5)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C(b9)'">
                   <chord num="1(b9)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Csus2'">
                   <chord num="1sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cm'">
                   <chord num="1m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/D'">
                   <chord num="1/2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/G'">
                   <chord num="1/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dsus4'">
                   <chord num="2sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D/A'">
                   <chord num="2/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm/A'">
                   <chord num="2m/6"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Em/D'">
                   <chord num="3m/2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Emadd11/A'">
                   <chord num="3madd11/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fmaj7'">
                   <chord num="4maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Fmaj7/A'">
                   <chord num="4maj7/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F5/C'">
                   <chord num="4^5/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D/F#'">
                   <chord num="2/b5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D^9/F#'">
                   <chord num="2^9/b5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dmaj7/F#'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#7sus4'">
                   <chord num="b5^7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G6'">
                   <chord num="5^6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G7'">
                   <chord num="5^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Ab'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Adim/C'">
                   <chord num="6dim/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A/C#'">
                   <chord num="6/b2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A7sus4'">
                   <chord num="6^7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am7/G'">
                   <chord num="6m7/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am/C'">
                   <chord num="6m/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Amadd9'">
                   <chord num="6madd9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Ammaj9'">
                   <chord num="6m(maj9)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bbmaj7'">
                   <chord num="b7maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm7'">
                   <chord num="7m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm(b9)'">
                   <chord num="7m(b9)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm/D'">
                   <chord num="7m/2"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- C#                                                               -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'C#'">
               <xsl:if test=". = 'C#'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#sus2'">
                   <chord num="1sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#add9'">
                   <chord num="4add9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G#madd11'">
                   <chord num="5madd11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Amaj7'">
                   <chord num="b6maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#m7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#5'">
                   <chord num="6^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B6add9'">
                   <chord num="b7^6add9"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- Db                                                               -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'Db'">
               <xsl:if test=". = 'Db'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dbsus2'">
                   <chord num="1sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Db5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gbadd9'">
                   <chord num="4add9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Abmadd11'">
                   <chord num="5madd11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Amaj7'">
                   <chord num="b6maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bbm7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B6add9'">
                   <chord num="b7^6add9"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- D                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'D'">
               <xsl:if test=". = 'D'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dsus2'">
                   <chord num="1sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dsus4'">
                   <chord num="1sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D7'">
                   <chord num="1^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dadd11'">
                   <chord num="1add11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="1m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm/C'">
                   <chord num="1m/b7"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Esus4'">
                   <chord num="2sus4"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'C/D'">
                   <chord num="b7/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#m7/D'">
                   <chord num="7m7/1"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- Eb                                                               -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'Eb'">
               <xsl:if test=". = 'Eb'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb7'">
                   <chord num="1^7"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Dbmaj7'">
                   <chord num="b7maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm7add11'">
                   <chord num="7m7add11"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D7'">
                   <chord num="7^7"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'E7'">
                   <chord num="1^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em7'">
                   <chord num="1m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#m'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#m7'">
                   <chord num="2m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="b3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G5'">
                   <chord num="b3^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G6/D'">
                   <chord num="b3^6/b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G#m7'">
                   <chord num="3m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus2'">
                   <chord num="4sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus4'">
                   <chord num="4sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A5'">
                   <chord num="4^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A6'">
                   <chord num="4^6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A7'">
                   <chord num="4^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A7sus4'">
                   <chord num="4^7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A13'">
                   <chord num="4^13"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="4m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B/A'">
                   <chord num="5/4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B/E'">
                   <chord num="5/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B5'">
                   <chord num="5^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B7'">
                   <chord num="5^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bsus2/G#'">
                   <chord num="5sus2/3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bsus2/E'">
                   <chord num="5sus2/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#m'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A/C#'">
                   <chord num="4/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D5'">
                   <chord num="b7^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D/E'">
                   <chord num="b7/1"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- F                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'F'">
               <xsl:if test=". = 'F'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F6'">
                   <chord num="1^6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F/A'">
                   <chord num="1/3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F/C'">
                   <chord num="1/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G6/B'">
                   <chord num="2^6/#4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G5'">
                   <chord num="2^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gsus2'">
                   <chord num="2sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm6/Bb'">
                   <chord num="2m6/4"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Am7'">
                   <chord num="3m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am/D'">
                   <chord num="3m/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bb'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bbmaj7'">
                   <chord num="4maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bdim'">
                   <chord num="b5dim"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Csus4'">
                   <chord num="5sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cadd9'">
                   <chord num="5add9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cadd9/G'">
                   <chord num="5add9/2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dsus4'">
                   <chord num="6sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D5'">
                   <chord num="6^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm/F'">
                   <chord num="6m/1"><xsl:apply-templates/></chord>
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
               <xsl:if test=". = 'Em7'">
                   <chord num="7m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em/D'">
                   <chord num="7m/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/E'">
                   <chord num="5/7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E7sus4'">
                   <chord num="7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- Gb                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'Gb'">
               <xsl:if test=". = 'Gb'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gbmaj7'">
                   <chord num="1maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Emaj7sus4/A'">
                   <chord num="b7maj7sus4/b3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="b3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cb'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cb/Gb'">
                   <chord num="4/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Db'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dbm'">
                   <chord num="5m"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <!-- ================================================================ -->
           <!-- G                                                                -->
           <!-- ================================================================ -->
           <xsl:when test="preceding::key = 'G'">
               <xsl:if test=". = 'G'">
                   <chord num="1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G5'">
                   <chord num="1^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G6'">
                   <chord num="1^6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G7'">
                   <chord num="1^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gsus4'">
                   <chord num="1sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Gm'">
                   <chord num="1m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A'">
                   <chord num="2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A5'">
                   <chord num="2^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A/C#'">
                   <chord num="2/#4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus4'">
                   <chord num="2sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Asus2'">
                   <chord num="2sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am'">
                   <chord num="2m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Am7'">
                   <chord num="2m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F/A'">
                   <chord num="b7/2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#sus2'">
                   <chord num="b3sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#maj7'">
                   <chord num="b3maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'A#add(b5)'">
                   <chord num="b3add(b5)"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B'">
                   <chord num="3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B5'">
                   <chord num="3^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'B7'">
                   <chord num="3^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bsus4'">
                   <chord num="3sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm'">
                   <chord num="3m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm7'">
                   <chord num="3m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm/D'">
                   <chord num="3m/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Bm/E'">
                   <chord num="3m/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'G/B'">
                   <chord num="1/3"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C'">
                   <chord num="4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Cmaj7'">
                   <chord num="4maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C5'">
                   <chord num="4^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C7sus4'">
                   <chord num="4^7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/G'">
                   <chord num="4/1"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/D'">
                   <chord num="4/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#5'">
                   <chord num="b5^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C#m7/D'">
                   <chord num="b5m7/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D'">
                   <chord num="5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D5'">
                   <chord num="5^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D7sus4'">
                   <chord num="5^7sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dsus2'">
                   <chord num="5sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dsus4'">
                   <chord num="5sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dadd4add9'">
                   <chord num="5add4add9"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm'">
                   <chord num="5m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Dm/C'">
                   <chord num="5m/4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Eb'">
                   <chord num="b6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D#maj7'">
                   <chord num="b6maj7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E'">
                   <chord num="6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E5'">
                   <chord num="6^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'E7'">
                   <chord num="6^7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Esus2'">
                   <chord num="6sus2"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Esus4'">
                   <chord num="6sus4"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em'">
                   <chord num="6m"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em7'">
                   <chord num="6m7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'Em/D'">
                   <chord num="6m/5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'C/E'">
                   <chord num="4/6"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F'">
                   <chord num="b7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F5'">
                   <chord num="b7^5"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'D/F#'">
                   <chord num="5/7"><xsl:apply-templates/></chord>
               </xsl:if>
               <xsl:if test=". = 'F#5'">
                   <chord num="7^5"><xsl:apply-templates/></chord>
               </xsl:if>
           </xsl:when>
           
           <xsl:otherwise>
               <xsl:copy-of select="."/>
           </xsl:otherwise>
           
       </xsl:choose>
       
   </xsl:template>
    
</xsl:stylesheet>