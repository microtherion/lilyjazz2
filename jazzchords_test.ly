\version "2.19.2"
#(set-global-staff-size 20)
\require "lilyjazz2:."

\paper {
  #(set-paper-size "a4")
  indent = 0\mm
}

\header {
  title = #"Jazz Chords"
}

theChords = \chordmode {
   c1 c1:6 c1:6.9 c1:9 c1:maj c1:maj7.13 \break
   c1:maj9 c1:maj13 c1:7 c1:9 c1:13 c1:m \break
   c1:m6 c1:m6.9 c1:m9^7 c1:m7 c1:m7.11 c1:m7.13 \break
   c1:m9 c1:m11 c1:m13 c1:m7+ c1:m7+.9 c1:m7.5- \break
   c1:m9.5- c1:m11.5- c1:dim c1:dim7  c1:aug c1:sus \break
   c1:7.4^3 c1:9.4^3 c1:13.4^3 c:maj7.5- c1:maj7.5+ c1:maj7.11+ \break
   c1:maj9.11+ c1:maj13.11+ c1:7.5- c1:9.5- c1:7.5+ c1:9.5+ \break
   c1:7.9- c1:7.9+ c1:7.9-.5- c1:7.9+.5+ c1:7.9-.5+ c1:7.11+ \break
   c1:9.11+ c1:7.11+.9- c1:7.11+.9+ c1:13.5- c1:13.9- c1:13.11+ \break
   c1:sus4.7.9- c1:sus4.13.9-.7 c'1/e c'1/g e1/c

   \pageBreak \set chordNameExceptions = #JazzChords

   c1 c1:6 c1:6.9 c1:9 c1:maj c1:maj7.13 \break
   c1:maj9 c1:maj13 c1:7 c1:9 c1:13 c1:m \break
   c1:m6 c1:m6.9 c1:m9^7 c1:m7 c1:m7.11 c1:m7.13 \break
   c1:m9 c1:m11 c1:m13 c1:m7+ c1:m7+.9 c1:m7.5- \break
   c1:m9.5- c1:m11.5- c1:dim c1:dim7  c1:aug c1:sus \break
   c1:7.4^3 c1:9.4^3 c1:13.4^3 c:maj7.5- c1:maj7.5+ c1:maj7.11+ \break
   c1:maj9.11+ c1:maj13.11+ c1:7.5- c1:9.5- c1:7.5+ c1:9.5+ \break
   c1:7.9- c1:7.9+ c1:7.9-.5- c1:7.9+.5+ c1:7.9-.5+ c1:7.11+ \break
   c1:9.11+ c1:7.11+.9- c1:7.11+.9+ c1:13.5- c1:13.9- c1:13.11+ \break
   c1:sus4.7.9- c1:sus4.13.9-.7 c'1/e c'1/g e1/c
}

\score {
  <<
    \override Score.ChordName #'font-size = #3.000000
    \new ChordNames \theChords
    \new Voice \theChords
  >>
}
