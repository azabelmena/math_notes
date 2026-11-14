#import "@preview/quire:0.1.0": *
#import "../../../lib.typ" : *

=== Affine Algebraic Subsets of the Plane <section1.3>

We now observe the case of algebraic sets in $AA^2$ for any field.

#proposition[
  Let $k$ be a field. If $f(x,y)$ and $g(x,y)$ are coprime in $k[x,y]$,
  then $V(f,g)$ is finite.
]<proposition1.4.1>
#proof[
  If $f(x,y)$ and $g(x,y)$ are coprime in $k[x,y]=k[x][y]$, then
  they are coprime in $k(x)[y]$. Then $(f,g)=(1)$, since $k(x)[y]$
  is a PID. Then there exist $r(y), s(y) in k(x)[y]$ for which:
  $ r(y)f(x,y)+s(y)g(x,y) = 1 $
  Now, there also exists a non-zero $d(x) in k[x]$ for which
  $a(x,y)=d(x)r(y)$ and $b(x,y)=d(x)s(y)$. Then:
  $ a(x,y)f(x,y)+b(x,y)g(x,y) = d(x) $
  If $(a_1, a_2) in V(f,g)$, we get:
  $ a(a_1,a_2)f(a_1,a_2)+b(a_1,a_2)g(a_1,a_2) = d(a_1) $
  Since $d(x)$ has finitely many roots, there are finitely many
  $a_1$ for which $(a_1,a_2) in V(f,g)$. By similar reasoning on the
  ring $k(y)[x]$, there are finitely many $a_2$ for which $(a_1,a_2)
  in V(f,g)$. Therefore, $|V(f,g)|<infinity$.
]
#corollary[
  If $f(x,y)$ is irreducible in $k[x,y]$, and $V(f)$ is infinite,
  then $Ic(V(f))=(f)$ and $V(f)$ is irreducible.
]<corollary1.4.2>
#proof[
  Let $g(x,y) in Ic(V(f))$. Since $V(f)$ is infinite, $g|f$ so $g in
  (f)$. Now, since $f(x,y)$ is irreducible, $(f)$ is prime so that
  $V(f)$ is irreducible by @proposition1.3.2.
]
#corollary[
  If $k$ is algebraically closed, and $f(x,y)$ is irreducible, then
  $Ic(V(f))=(f)$, and $V(f)$ is irreducible.
]<corollary1.4.3>
#proof[
  Since $k$ is algbebraically closed, $V(f)$ is infinite and the
  rest follows from the above @corollary1.4.3.
]
#corollary[
  If $k$ is infinite, the the irreducible algebraic sets of
  $AA^(2)(k)$ are $AA^(2)(k)$ itself, the empty-set, points, and
  irreducible plane curves.
]<corollary1.4.4>
#proof[
  Let $V cc AA^(2)(k)$ be an irreducible algebraic set. If
  $Ic(V)=(0)$, or $Ic(V)=k[x,y]$, then $V=AA^(2)(k)$ or
  $V=emptyset$. Now, if $Ic(V)$ contains a non-constant polynomial
  $f(x,y)$, since $Ic(V)$ is prime, any irreducible factor of
  $f(x,y)$ is contained in $Ic(V)$ and we can assume that $f(x,y)$
  is irreducible. Then $Ic(V)=(f)$. Lastly, if $P in AA^(2)(k)$ is a
  point, then ${P}$ is irreducible by definition.
]
#corollary[
  If $k$ is algebraically closed, and $f(x,y) in k[x,y]$ has the
  factorization: $ f(x,y) = f_1(x,y)^(n_1) ... f_r(x,y)^(n_r)$ into
  irreducible factors, then: $ V(f) = V(f_1) union ... union V(f_r) $
  where each $V(f_i)$ is irreducible. Moreover, $Ic(V)=(f_1, ..., f_r)$.
]<corollary>
#proof[
  Since each $f_i(x,y)$ is irreducible, no $f_i(x,y)$ divides any
  other $f_j(x,y)$ for all $i != j$. Since $k$ is also algebraically
  closed, we get that each $V(f_i)$ is irreducible, and so $V(f_i)
  cc.not V(f_j)$ for all $i != j$. Thus, $V(f_i)$ are the required
  irreducible components in the decomposition of $V(f)$ into
  irreduceible algebraic sets.

  Now:
  $  Ic(V(f)) = inter.big_(i=1)^(r)Ic(V(f_i)) = inter.big_(i=1)^(r)(f_i)  $

  Now any polynomial divisible by $f_(i)(x,y)$ is also divisible by
  $f_1(x,y), ..., f_(r)(x,y)$. So:
  $  Ic(V(f)) = inter.big_(i=1)^(r)(f_i) = (f_1, ..., f_r) $
]

#example[
  + Let $f(x,y)=x^2+y^2+1$. If $f(x,y)=0$ then $x^2=-y^2-1$. Now
    suppose there is a point $(a,b) in RR^2$ for which $a^2=-b^2-1$.
    Then $a^2=-(b^2+1)$. Now, there are no such $a in RR$ for which
    this equation holds for all $b in RR$, hence $(a,b) notin V(f)$.
    Hence $V(x^2+y^2+1)=emptyset$, and $Ic(V(x^2+y^2+1))=RR[x,y]$.

  + Since $RR$ is infinite, by @corollary1.4.4, the only irreducible
    algebraic sets of $RR^2$ are $RR^2$ itself, $emptyset$, points,
    or irreducible plane curves. We get the following forms for
    irreducible algebraic sets in $RR^2$:
    + $V(0)$ or $V(1)$ where $0(x,y)$ and $1(x,y)$ are the
      zero-polynomial and constant polynomial $1$, respectively.
    + $V(x-a_1,y-a_1)$ where $P=(a_1, a_2) in RR^2$.

    + $V(f)$ where $f(x,y)$ is an irreducible polynomial over $RR$.

  + Let $f(x,y)=y^2-x y-x^2y+x^3$ in $RR[x,y]$. Then
    $f(x,y)=(y+x^2)(y-x)$. So $V(f)=V(y-x^2) union V(y-x)$. Now, we
    have that $y+x^2=(x-i y)(x+i y)$ in $CC[x,y]$ so $V(f)=V(x-i y)
    union V(x+i y) union V(y-x)$

  + Let $f(x,y)=y^2-x(x^2-1) in RR[x,y]$. Then $f(x,y)$ is
    irreducible in both $RR[x,y]$ and $CC[x,y]$. Therefore $V(f)$ is
    irreducible in $RR^2$ and $CC^2$.

  + Let $f(x,y)=x^3-x-x^2y-y in RR[x,y]$. Then
    $f(x,y)=(x-y)(x^2+1)$. So $V(f)=V(x-y) union V(x^2-1)$ in
    $RR^2$, and $V(f)=V(x-y) union V(x-i) union V(x+i)$ in $CC^2$.
]<example1.4.6>
