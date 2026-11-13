#import "@preview/quire:0.1.0": *
#import "../../../lib.typ" : *

=== Irreducible Algebraic Sets <section1.3>

#definition[
  Let $k$ be a field. We call an algebraic set $X cc AA^(n)(k)$
  _reducible_ if it can be written as the union of two algebraic
  sets. That is, there exist $X_1, X_2 cc AA^(n)(k)$ such that
  $X=X_1 union X_2$. We call an algebraic set _irreducible_ if it is
  not reducible.
]<definition1.3.1>

#proposition[
  An affine algebraic set is irreducible if and only if its ideal is
  prime.
]<proposition1.3.2>
#proof[
  Let $X cc AA^n$. Suppose the ideal $Ic(X)$ is not prime, and let
  $f_1f_2 in Ic(X)$, but $f_1, f_2 notin Ic(X)$. Then:
  $ X=(X inter V(f_1)) union (X inter V(f_2))$
  and $X inter V(f_1) cc X$ and $X inter V(f_2) cc X$. This makes
  $X$ reducible by definition.

  Conversely, suppose that $X=X_1 union X_2$, for some $X_1, X_2 cc
  AA^n$. Then $Ic(X) cc Ic(X_1)$ and $Ic(X) cc Ic(X_2)$. Let $f_1 in
  Ic(X_1)$ and $f_2  in Ic(X_2)$, and suppose that $f_1, f_2 notin
  Ic(X)$. Then $f_1f_2 in Ic(Z)$, which means that $Ic(X)$ is not
  a prime ideal.
]

#example[
  + The algebraic set $V(y-x^2)$ is irreducible in $AA^(2)(C)$. Let
    $phi$ be the homomorphism from $CC[x,y]$ onto $CC[x]$ defined by
    the rules:
    $
      x &--> x  \
      y &--> y^2  \
    $
    then $ker phi=(x-y^2)$, and by the first isomorphism theorem for
    rings we get: $ quotient( CC[x,y], (y-z^2) ) tilde.eq CC[x] $
    This makes $(y-x^2)$ a prime ideal, and so $V(y-x^2)$ is
    irreducible. Moreover; $Ic(V(y-x^2))=(y-x^2)$.

  + The set $V(y^4-x^2, y^4-x^2y^2+x y^2-x^3)$ is reducible in
    $AA^(2)(CC)$. We have:
    $
    V(y^4-x^2, y^4-x^2y^2+x y^2-x^3) =
    V(y^4-x^2) inter V(y^4-x^2y^2+x y^2-x^3)
    $
    Now,
    $
    y^4-x^2 = (y^2-x)(y^2+x) " and "
    y^4-x^2y^2+x y^2-x^3 = (y^2+x)(y-x)(y+x)
    $
    So:
    $
    V(y^4-x^2, y^4-x^2y^2+x y^2-x^3) =
    V(y^2-x) union V(y^2+x) union V(y-x) union V(y+x)
    $

  + Recall that an irreducible element in an integral domain need
    not be prime; indeed, $RR[x,y]$ is not a PID.

    Now, let $f(x,y)=y^2+x^2(x-1)^2 in RR[x,y]$. Viewing $f(x,y)$ as
    a polynomial in $y$, set $a=x^2(x-1)^2$, then $f'(y)=f(x,y)=y^2+a$
    has no real roots, and so is irreducible in $RR[y]$. Now, set
    $a=y^2$ so tha t$f(x,y)=x^2(x-1)^2+a$. Let $z=x(x-1)$, then
    $f'(z)=f(x,y)=z^2+a$, which has no real root in $RR[z]$. Hence
    $f(x,y)$ must also be irreducible oover $RR[x]$, so $f(x,y)$ is
    irreducible over $RR[x,y]$. However, notice that the only points
    in $V(y^2+x^2(x-1)^2)$ are the points $(0,0)$ and $(1,0)$. This
    makes $V(y^2+x^2(x-1)^2)$ reducible in $RR^2$.

  + Let $f(x,y)=y^2+x^2(x-1)^2 in CC[x,y]$. Observe:
    $ f(x,y) = (x^2-x-i y)(x^2-x+i y) $
    So that $V(f)$ is reducible in $CC[x,y]$, with:
    $ V(f) = V(x^2-x-i y) union V(x^2-x+i y) $
    Now, the compoenents $V(x^2-x-i y)$ and $V(x^2-x+i y)$ are
    irreducible components, since $x^2-x plus.minus y$ is
    irreducible over $CC$, and $(x^2-x-i y)$ and $(x^2-x+i y)$ are
    prime ideals in $CC[x,y]$. This occurs because $CC$ is
    algebraically closed.

  + Let $k$ be an infinite field. Then $AA^(n)(k)=(0)$, which is
    prime in $k[x_1, ..., x_n]$. Since $k[x_1, ..., x_n]$ is an
    integral domain, this makes $AA^(n)(k)$ irreducible.

  + For any finite field $FF_q$, $AA^(n)(FF_q)$ is reducible.
    Indeed, $AA^(n)(FF_q)$ is the finite disjoint union of $q^n$
    points. Similarly, any algebraic set of $AA^(n)(F_q)$ must also
    be reducible.
]<example1.3.3>

#proposition[
  Any non-empty collection of affine algebraic sets has a minimal member.
]<proposition1.3.4>
#proof[
  Let $k$ be the underlying field, and let ${X_alpha}$ be a
  non-empty collection of algebraic sets in $AA^(n)(k)$, ordered by
  inclusion. Then the collection of ideals ${Ic(X_alpha)}$ is
  ordered by the reverse inclusion by @proposition1.2.2(2). Since
  $k[x_1, ..., x_n]$ is a Noetherian ring, ${Ic(X_alpha)}$ has a
  maximal member, and therefore, the collection ${X_alpha}$ must
  have a minimal member.
]

#theorem[
  Any affine algebraic set can be uniquely expressed as the disjoint
  union of irreducible algebraic sets.
]<theorem1.3.5>
#proof[
  We first show that such a decomposition exists for every algebraic
  set in $AA^n$. Let $Ss$ be the collection of all algebraic sets
  which cannot be expressed as a (not necessarily disjoint) union of
  (not necessarily unique) irreducible algebraic sets. Let $X$ be a
  minimal element of $Ss$, then $X$ is not irreducible, and there
  exist $X_1, X_2 cc AA^n$ for which $X=X_1 union X_2$. Suppose
  further that $X_1, X_2 cc X$. By the minimality of $X$, $X_1, X_2
  notin Ss$. Then:
  $ X_i = union.big_(j=1)^(m_i)X_(i j) $
  where each $X_(i j)$ is irreducible. This makes:
  $ X = union.big_(i=1, j=1)^(2,m_i)X_(i j) $
  which contradicts that $X in Ss$. Therefore, $Ss$ must be
  empty, and every algebraic set can be expressed as the union of
  irreducible algebraic sets.

  Now, take $X=X_1 union ... union X_m$, where each $X_i$ is an
  irreducible algebraic set, and discard all those $X_i$ for which
  $X_i cc X_j$ for all $i != j$, so that the union is disjoint.
  Suppose also that $X=Y_1 union ... Y_r$ in the same manner. Then:
  $ X_i = union.big_(j=1)^(r)(X_j inter X_l) $
  So that $X_i cc Y_j$ for some $j$. Similarly, $Y_j cc X_l$ for
  some $l$. Thus $X_i cc X_l$. Since $X$ is already a disjoint
  union, this makes $i=l$, and so $X_i=Y_j$, and $m=r$. Therefore,
  the decomposition of $X$ into mutually disjoint irreducible
  algebraic sets is unique.
]
#corollary[
  If $X,Y cc AA^n$ are algebraic sets such that $X cc Y$, then each
  irreducible component of $X$ is contained in an irreducible
  component of $Y$.
]<corollary1.3.6>
#proof[
  Let $ X = union.big_(i=1)^(r)X_j " and " Y = union.big_(j=1)^(l)Y_j $
  the decompositions of $X$ and $Y$ where ${X_i}_(i=1)^r$ and
  ${Y_j}_(j=1)^l$ are the collections of irreducible components of
  $X$ and $Y$, respectively. Let $Ss$ be the collection of all
  irreducible components of $X$ not contained in an irreducible
  element of $Y$, Then by @proposition1.3.4, $Ss$ has a minimal
  member $X'$. Then $X' cc.not Y_j$ for any $1 <= j <= l$, so $X
  cc.not Y$. But $X' cc X cc Y$, which contradicts the assumption.
  Therefore $Ss$ must be empty.
]
