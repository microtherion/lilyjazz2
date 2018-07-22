#(define-markup-command (acMaj layout props extension) (string?)
  (interpret-markup layout props
    (markup #:super "^" #:super extension)))

MoreJazzChordsList = {
% Use dim7, not 7dim
  <c es ges beses>-\markup { \super "dim7" } % :dim7
% Use 7(#5) not 7 #5
  <c es ges bes>-\markup { \acMin #"7(>5)" } % :m7.5-
  <c es gis bes>-\markup { \acMin #"7(<5)" } % :m7.5+
% Use a triangle to represent Maj7 chords, not capital M
  <c e g b>-\markup { \acMaj #"" } % :maj
  <c e ges b>-\markup { \acMaj #"7(>5)" } % :maj.5-
  <c e gis b>-\markup { \acMaj #"7(<5)" } % :maj.5+
  <c e g b a'>-\markup { \acMaj #"(add 13)" } % :maj13
  <c e g b d'>-\markup { \acMaj #"9" } % :maj9
  <c e g b d' f'>-\markup { \acMaj #"11" } % :maj11
  <c e g b d' fis'>-\markup { \acMaj #"9(<11)" } % :maj9.11+
  <c e g b d' a'>-\markup { \acMaj #"13" } % :maj13
  <c e g b d' fis' a'>-\markup { \acMaj #"13(<11)" } % :maj13.11+
  <c es g b>-\markup { \acMin #"^" } % :m7+
  <c es g b d'>-\markup { \acMin #"^9" } % :m9.7+
% More major third chords
  <c e ges bes d'>-\markup { \super "9(>5)" } % :9.5-
  <c e ges bes d' a'>-\markup { \super "13(>5)" } % :13.5-
  <c e g bes d' fis' a'>-\markup { \super "13(<11)" } % :13.11+
  <c e gis bes d'>-\markup { \super "9(<5)" } % :9.5+
  <c e g bes des' fis'>-\markup { \override #'(baseline-skip . 2) \acAlt #"7" #"<11" #">9" } % :9-.11-
  <c e g bes dis' fis'>-\markup { \override #'(baseline-skip . 2) \acAlt #"7" #"<11" #"<9" } % :9-.11+
% More sus chords
  <c f g bes d' a'>-\markup { \super "13sus" } % :sus4.13.9.7
  <c f g bes des'>-\markup { \super "7sus(>9)" }  % :sus4.7.9-
  <c f g bes des' a'>-\markup { \super "13sus(>9)" } % :sus4.13.9-.7
}
MoreJazzChords = #(append (sequential-music-to-chord-exceptions MoreJazzChordsList #t) JazzChords)

\layout {
  \context {
    \ChordNames
    chordNameExceptions = #MoreJazzChords	% update the chord exceptions
  }
}
