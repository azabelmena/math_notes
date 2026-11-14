#import "@preview/quire:0.1.0": *
#import "@preview/cetz:0.5.3" : *
#import "../../../lib.typ" : *

=== Coordinate Rings and Polynomial Maps <section2.1>

==== Coordinate Rings <section2.1.1>

#definition[
  We call an irreducible affine algebraic set in $AA^(n)(k)$ an
  _affine variety_.
]<definition2.1.1>

#definition[
  We define the _coordinate ring_ of an affine variety $V cc
  AA^(n)(k)$ to be the following quotient ring:
  $ k[V] = quotient(k[x_1, ..., x_n], I(V)) $
]<definition2.1.2>

#definition[
  Let $V cc AA^(n)(k)$ be an affine variety. We call a function $F:V
  -> k$ a _polynomial function_ if there exists a polynomial $f(x_1,
  ..., x_n) in k[x_1, ..., x_n]$ for which $F(P)=f(P)$ for all $P in
  V$.
]<definition2.1.3>
