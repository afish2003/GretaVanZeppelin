# GretaVanZeppelin Project
_Semester project for [DIGIT 210](https://github.com/newtfire/textAnalysis-Hub) at [Penn State Behrend](https://behrend.psu.edu/)_

## Overview
[Greta Van Fleet](https://en.wikipedia.org/wiki/Greta_Van_Fleet) is a new-ish artist (c. 2012), so not much research has been done on them. An archival and research project based on their work is something that could prove to be very insightful. The press commonly compare Greta Van Fleet to [Led Zeppelin](https://en.wikipedia.org/wiki/Led_Zeppelin), specifically commenting on similarities in their writing styles and stage presence. 

This project hopes to compare and contrast of their writing styles via their use of chords in addition to lyrical themes.

## Resource Processing
Our main resource is chord charts which contain both chords and lyrics. We will focus on the first four albums from each artist, but our processing could further apply to the rest of Zeppelin's catalog, as well as other artists!

XML markup (created by ixml and XSLT) will preserve each line of chords with each line of lyrics. It won't indicate specifically where the chords line up with the lyrics because that wasn't necessary for the purpose of this project; the [raw-text](https://github.com/afish2003/GretaVanZeppelin/tree/dea87571ba7f702e7a18e979ae25ee68ef2686d1/pipeline/raw-text) and [ixml-output](https://github.com/afish2003/GretaVanZeppelin/tree/dea87571ba7f702e7a18e979ae25ee68ef2686d1/pipeline/ixml-output) files still roughly show the chords lining up with the lyrics, but they were not checked for 100% accuracy. 

We used some Python-based NLP to compose graphs that represent the work of both artists. Our overall analysis is focused on searching for regular patterns across their songs and/or the chords/chord progressions they chose.

### MEI (Music Encoding Initiative)

We did not use [**MEI**](https://music-encoding.org) to encode our documents. It was used initially as a guideline for our markup, but ultimately, we realized it wasn't necessary for our project. So, instead of making our files conform to [MEI's schema](https://github.com/music-encoding/schema), we decided to go in our own direction with the skeleton of the markup being a nod to MEI.

## Final Implementation
Our work is presented on our [interactive GitHub pages site](https://afish2003.github.io/GretaVanZeppelin/). 

Further implementations based on this project could include:
* The creation of MIDI files to add interactivity and explain the chord progressions of the songs
* Procedural node based art in [MaxMSP](https://cycling74.com/products/max) to create abstract but data-packed visuals to compare the artists

This project was created by Alexander Fisher, Ashlynn Allgeier, Michael Simons, and Connor Carpenter [(learn more on our website)](https://afish2003.github.io/GretaVanZeppelin/about.html).
[Slides for our Balisage presentation](https://slides.com/elisabeshero-bondar/ixml-chord)
