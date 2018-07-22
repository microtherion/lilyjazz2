# lilyjazz2 lyp package

This is a packaging of the lilyjazz 2.0 font packages and stylesheet for use with the `lyp` package manager.

Most of the contents is just a rearrangement of Steve Lacy's (@slacy) https://github.com/OpenLilyPondFonts/lilyjazz repository (which itself is based on [Abraham Lee](tisimst.lilypond@gmail.com)'s font and lilypond work) to conform to `lyp` packing standards.

The only added files are:

* `package.ly`, the `lyp` packaging root.
* `jazzchords_test.ly`, a test sheet for a wide variety of jazz chords.
* `morejazz.ily`, a number of tweaks to the chord name display, notably
   * Using a triangle instead of "M" for major 7th chords.
   * Adding a few more exotic chord combinations.

To restore the chord naming in the original package, add `\set chordNameExceptions = #JazzChords` in your file.

## Differences with original lilyjazz lyp package

The primary difference between this package and the original lilyjazz `lyp` package (https://github.com/lyp-packages/lilyjazz) is the use of a somewhat tamer chord font, which also correctly handles sharps and flats in chord symbols.
