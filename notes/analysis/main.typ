#import "@preview/quire:0.1.0" : *
#import "@preview/theorion:0.6.0": *
#import "./lib.typ" : *

#set-qed-symbol[#smallcaps(text(font: "Spectral", "qed."))]

#show: quire.with(
  title: [Real Analysis],
  authors: (name: "Alec S. Zabel-Mena", affiliation: [UPR-RP]),
  lang: "en",
  top-level: "part",
  output: "digital",
  paper: "a4",
  kicker: [Notes],
  institution: [],
  license: [This work is licensed under CC BY 4.0.],
  fonts: (
    serif: "Spectral",
    sans: "SpectralSC",
  ),
  strong: "bold",
  colors: (
    text: rgb("000000"),
    muted : rgb("000000")
  ),
)

#part([The Lebesgue Theory of Measure and Integration], label: <part1>)

#include( "parts/lebesgue/chapter1/chapter1.typ" )

#bibliography(full: true, "ref.bib")
