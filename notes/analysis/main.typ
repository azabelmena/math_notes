#import "@preview/quire:0.1.0": *

#show: quire.with(
  title: [Real Analysis],
  subtitle: [The Theory of Real-Valued Functions],
  authors: (name: "Alec S. Zabel-Mena", affiliation: [UPR-RP]),
  lang: "en",
  top-level: "part",
  output: "print",
  paper: "a4",
  kicker: [Notes],
  institution: [],
  license: [This work is licensed under CC BY 4.0.],
  fonts: (serif: "Spectral", math: "Spectral")
)

#part([
  The Lebesgue Theory of Measure and Integration
])

#include( "parts/lebesgue/chapter8/chapter8.typ" )

#bibliography(full: true, "ref.bib")
