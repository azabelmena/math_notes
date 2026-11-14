#import "@preview/quire:0.1.0": *
#import "../../../lib.typ" : *

=== Ideals of Affine Algebraic Sets <section1.2>

#definition[
  Let $k$ be a field. We define the _deal_ of a set $X cc AA^(n)(k)$
  to be the set:
  $ I(X) = { f in k[x_1, ..., x_n] : f(P)=0 " for all " P in X } $
  That is, $I(X)$ is the set of all polynomials over $k$ vanishing
  on $X$.
]<definition1.2.1>

#proposition[
  Let $k$ be a field, then the following statements are true:
  + For any $X cc AA^(n)(k)$, $I(X)$ is a radical ideal in $k[x_1,
    ..., x_n]$.

  + If $X cc Y$ in $AA^(n)(k)$, then $I(Y) cc I(X)$.

  + $I(emptyset)=k[x_1, ..., x_n]$, and if $k$ is an infinite
    field, then $I(AA^(n)(k))=(0)$. Moreover, for any $a_1, ...,
    a_n in k$: $ I({a_1, ..., a_n})=(x_1-a_1, ..., x_n-a_n) $

  + For any set of polynomials over $k$:
    $ S cc I(V(S)) " and " V(S)=V(I(V(S))) $

  + For any set $X$ of points in $AA^(n)(k)$:
    $ X cc V(I(X)) " and " I(X)=I(V(I(X))) $
]<proposition1.2.2>
#proof[
  Let $X cc AA^(n)(k)$. We observe that $I(X)$ is an ideal, and
  moreover, recall that $I(X) cc sqrt(I(X))$. Now, let $f in
  sqrt(I(X))$. Then for some $n in ZZ^+$, $f^n in I(X)$. Then for
  every $P in X$, $f^n(P)=0$, but that makes $f(P)=0$, so $f in
  I(X)$. Hence $sqrt(I(X))=I(X)$.

  Now, statements (2) and (3) follow directly from
  @proposition1.1.6, indeed; suppose $X cc Y$, and let $f in I(Y)$.
  Then for any $P in Y$, $f(P)=0$, so by inclusion, for any point $Q
  in X$ we get $f(Q)=0$, so $f in I(X)$. Observe now that $k[x_1,
  ..., x_n]=(1)$, which vanishes on no set of $AA^(n)(k)$, we get
  $I(emptyset)=(1)$. Now, let $k$ be an infinite field, then the
  zero-polynomial $0(x_1, ..., x_n)$ vanishes on all $AA^(n)(k)$, so
  that $I(AA^(n)(k))=0$ (if $k$ were finite, then $I(AA^(n)(k))$
  cannot be trivial since every subset of $AA^(n)(k)$ is algebraic).

  Now, let $S cc k[x_1, ..., x_n]$. Then for any $f in S$ and $P in
  V(S)$, $f(P)=0$, so $f in I(V(S))$. Now, let $P in V(S)$ so for
  any $f in I(V(S))$, $f(P)=0$, then $P in V(I(V(S)))$. Moreover,
  for any $f in I(V(S))$, $f$ vanishes on all $V(S)$, so we get the
  inculsion $V(I(V(S))) cc V(S)$. Statement (5) follows from
  reversing the argument of statement (4).
]

#proposition[
  Let $V$ and $W$ be algebraic sets in $AA^n$. Then $V=W$ if and
  only if $I(V)=I(W)$.
]<proposition1.2.3>
#proof[
  If $V=W$, then $V cc W$ so that $I(W) cc I(V)$, and $W cc V$ so
  that $I(V) cc I(W)$. Now, suppose that $I(V)=I(W)$. Then
  $I(V) cc I(W)$, so that $V(I(W))=W cc V=V(I(V))$, and $I(W)
  cc I(V)$, so that $V(I(V))=V cc W=V(I(W))$.
]

#example[
  Let $k$ be any field, unless specified otherwise.

  + Let $V$ be algebraic in $AA^(n)(k)$, and let $P in
    com(AA^(n)(k), V)$, and let $W=V union {P}$. Observe that $V cc
    W$ so that $I(W) cc I(V)$. Now, suppose the reverse inclusion
    holds; that is: for any $f in I(V)$, $f(Q)=0$ for all $Q in W$.
    Then $f(P)=0$, but $P notin V$, which contradicts the assumption
    that $f$ vanishes on all $V$. therefore, there is a polynomial
    $f$ over $k$ for which $f(Q)=0$ for all $Q in V$, but $f(P) !=
    0$. Define now the polynomila $g in k[x_1, ..., x_n]$ by:
    $ g(x_1, ..., x_n) = inv(f(P))f(x_1, ..., x_n) $
    Then $g in I(V)$, and $g(P)=1$.

  + By the above example, let $P_1, ..., P_r in com(AA^(n)(k), V)$.
    Fix $j$ so that $I(V union {P_j : i != j})} cc I(V)$. Hence,
    there are polynomials $f_1, ..., f_r in I(V)$ for which
    $f_i(P_j)=0$ for all $i != j$, but $f_i(P_i)=1$.

    Now, let $P_1, P_2 notin V$, and define: $f = a_1f_1+a_2f_2$,
    where $f_1, f_2 in I(V)$ such that $f_1(P_2)=0$ and
    $f_1(P_1)=1$, and $f_2(P_1)=0$ and $f_2(P_2)=1$.

  + Recall that the ideal $(x^2+1)$ is maximal in $RR[x]$, hence it
    is prime, and hence it is a radical ideal. However, $(x^2+1)$ is
    not the ideal of any set in $RR$, sinc the equation: $ x^2+1=0 $
    has no real solutions.
]<example1.2.4>

#proposition[
  Let $k$ be a field, and $af$ an ideal in $k[x_1, ..., x_n]$. Then
  $V(af)=V(sqrt(af))$, and $sqrt(af) cc I(V(af))$.
]<proposition1.2.5>
#proof[
  Observe that $af cc sqrt(af)$, so $V(sqrt(af)) cc V(af)$. Now let
  $P in V(af)$. Then for any $f in sqrt(af)$, $g=f^n in af$ for some
  $n in ZZ^+$. then $g(P)=(f(P))^n=0$, so $f(P)=0$. This puts $P in
  V(sqrt(af))$, indeed, it also puts $sqrt(af) cc I(V(af))$.
]
