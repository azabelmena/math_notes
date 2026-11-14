#import "@preview/quire:0.1.0" : *
#import "@preview/theorion:0.6.0": *
#import "@preview/cetz:0.5.3" : *
#import "./lib.typ" : *

#let serif_font = "Spectral";
#let sans_font = "SpectralSC";

#set-qed-symbol[#smallcaps(text(10pt, font: serif_font, "qed."))]

#show: quire.with(
  title: [Algebraic Geometry],
  authors: (name: "Alec S. Zabel-Mena", affiliation: [UPR-RP]),
  lang: "en",
  top-level: "part",
  output: "digital",
  paper: "a4",
  kicker: [Notes],
  institution: [],
  license: [This work is licensed under CC BY 4.0.],
  fonts: (
    serif: serif_font,
    sans: sans_font,
  ),
  strong: "bold",
  colors: (
    text: rgb("000000"),
    muted : rgb("000000")
  ),
)

#set enum( numbering: "(1)" )

#part([Classical Algebraic Geometry], label: <part1>)

#include( "parts/classical/chapter1/chapter1.typ" )

#bibliography(full: true, "ref.bib")
