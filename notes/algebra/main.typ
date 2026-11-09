#import "@preview/quire:0.1.0": *
#import "@preview/ctheorems:2.0.0": *

#show: thm-rules.with(qed-symbol: [#smallcaps("qed.")])

#show: quire.with(
  title: [Algebra],
  authors: (name: "Alec S. Zabel-Mena", affiliation: [UPR-RP]),
  lang: "en",
  top-level: "part",
  output: "print",
  paper: "a4",
  kicker: [Notes],
  institution: [],
  logo: image(width: 1.5in, height: 1.5in, "figures/planar_bipartite.svg"),
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

#part([Group Theory], label: <part1>)

#include( "parts/group_theory/chapter1/chapter1.typ" )

see @part1.

#bibliography(full: true, "ref.bib")
