#import "@preview/quire:0.1.0": *

=== Definitions and Examples

#definition[
  A _group_ is non-empty set $G$ together with a binary operation
  $*:G times G -> G$ such that:
  + For all $a, b in G$, $a * b in G$.
  + For all $a,b,c in G$, $(a * b) * c = a * (b * c)$.
  + There exists an element $e in G$ such that for every $a in G$,
    $a * e = e * a = a$.
  + For each $a in G$, there exist an element $b in G$ such that $a
    * b = b * a=e$, where $e$ is as above.
]<theorem1.1.1>

#proposition[
  If $G$ is a group, then the identity and inverse elements to
  elements are unique.
]
#proof[
  Let $G$ be a group, and let $e, f in G$ be identity elements of
  $G$. Then $e * f = e$ and $f * e = f$, but $e = e * f = f * e =
  f$.

  Now, fix an element $a in G$, and let $b, c in G$ be inverse
  elements to $a$. Then $c = c * (a * b) = (c * a) * b=b$.
]
