#import "@preview/quire:0.1.0": *
#import "../../../lib.typ" : *

=== Hilbert's Nullstellensatz <section1.5>

#proposition[The Weak Nullstellensatz][
  Let $k$ be an algebraically closed field. If $af$is a proper ideal
  of $k[x_1, ..., x_n]$, then $V(af)$ is non-empty.
]<proposition1.5.1>
#proof[
  Suppose without loss of generality that $af$ is a maximal ideal in
  $k[x_1, ..., x_n]$. Then $ l = quotient(k[x_1, ..., x_n], af) $ is a
  field containing $k$ as a subfield. Now, suppose that $k=l$, then
  for all $i <= i <= n$ there exists $a_i in k$ such that $x_i-a_i
  in af$. Now $(x_1-a_1, ..., x_n-a_n)$ is a maximal ideal in
  $k[x_1, ..., x_n]$, so that $af=(x_1-a_1, ..., x_n-a_n)$, and
  $V(af)={(a_1, ..., a_n)}$. Now, if $bf$ is any other ideal of
  $k[x_1, ..., x_n]$, then $bf$ is contained in a maximal ideal, say
  $af$. So $V(af) cc V(bf)$, and $V(bf)$ contains at least one
  point.
]

#theorem[Hilbert's Nullstellensatz][
  Let $k$ be an algebraically closed field, and let $af$ be an ideal
  of $k[x_1, ..., x_n]$. Then $Ic(V(af))=sqrt(af)$.
]<theorem1.5.2>
#proof[
  By @proposition1.2.5, $sqrt(af) cc Ic(V(af))$. Since every ideal
  in $k[x_1, ..., x_n]$ is finitely generated, let $af=(f_1, ...,
  f_r)$, and take $g in Ic(V(f_1, ..., f_r))$. Now, let $bf=(f_1,
  ..., f_r, x_(n+1)g-1)$. Then for any $P in V(f_1, ..., f_r)$,
  $g(P)=0$, so that $x_(n+1)g-1 != 0$. This makes $V(bf)=emptyset$.
  Therefore, by the _Weak Nullstellensatz_ (@proposition1.5.1), $1
  in bf$. Therefore: $ 1 = a_1f_1+...+a_(r)f_(r)+a_(r+1)(x_(n+1)g)-1 $
  where $a_1, ..., a_r, a_(r+1) in k[x_1, ..., x_(n+1)]$. Set
  $y=frac(1,x_(n+1))$. Then, for large enough $N in ZZ^+$:
  $ y^N = c_1f_1+...+c_(r)f_r+c_(r+1)(x_(n+1)g-y) $ for $c_1, ...,
  c_r, c_(r+1) in k[x_1, ..., x_(n+1)]$. Substituting $g$ for $y$ in
  the above equation gives $g^N in af$ in $k[x_1, ..., x_n]$, so
  that $g in sqrt(af)$.
]
#corollary[
  If $af$ is a radical ideal, then $Ic(V(af)) = af$. Moreover, there
  exists a 1-1 correspondence between radical ideals and affine
  algebraic sets.
]<corollary1.5.3>
#proof[
  Define the map:
  $
    I: 2^(AA^(n)(k)) & --> 2^(k[x_1, ..., x_n])  \
      V(S)  & --> Ic(V(S))
  $
  where $S$ is the generating set of $V(S)$. Then $Ic$ maps
  algebraic sets $V(S)$ to their ideals $Ic(V(S))$. Moreover, this
  map is a 1-1 correspondence between algebraic sets and their
  ideals by @proposition1.2.3. Now, let $af=(S)$ so $V(S)=V(af)$. By
  Hilbert's Nullstellensatz (@theorem1.5.2), $Ic(V(af))=sqrt(af)$.
  So the map $Ic$ defines a 1-1 correspondence between the affine
  algebraic set $V(af)$ and the radical ideal $sqrt(af)$. Lastly, if
  $af$ is radical in $k[x_1, ..., x_n]$, then by Hilbert's
  Nullstellensatz again, $Ic(V(af))=sqrt(af)=af$.
]
#corollary[
  If $af$ is a prime ideal, then $V(af)$ is irreducible. Moreover,
  there exists a 1-1 correspondence between prime ideals and
  irreducible algebraic set, where the maximal ideals correspond to
  points.
]<corollary1.5.4>
#proof[
  Consider again the above map $Ic:V(af) -> Ic(V(af))$ from
  @corollary1.5.3. If $V(af)$ is irreducible, then $Ic(V(af))$ is a
  prime ideal. Since $Ic$ is an injection, we get 1-1 correspondence
  between irreducible algebraic sets and prime ideals. Moreover, the
  algebraic set $V={(a_1, ..., a_n)}$ corresponds to the ideal
  $ Ic(V)=sqrt((x_1-a_1, ..., x_n-a_n))=(x_1-a_1, ..., x_n-a_n) $
  which is a maximal ideal.
]
#corollary[
  If $f in k[x_1, ..., x_n]$ has the decomposition:
  $ f(x_1, ..., x_n) = f_1(x_1, ..., x_n)^(n_1) ... f_(r)(x_1, ..., x_n)^(n_r) $
  into irreducible factors, then $V(f)$ decomposes as:
  $ V(f)= V(f_1) union ... union V(f_r) $
  into irreducible components. Moreover, there exists a 1-1
  correspondence between irreducible polynomials and irreducible
  hypersurfaces.
]<corollary1.5.5>
#proof[
  By @theorem1.3.5, $V(f)$ decomposes uniquely as $V(f)=V_1 union
  ... union V_r$, where $V_i$ is irreducible for all $1 <= i <= r$,
  and $V_i cc.not V_j$ for any $i != j$. Now, consider the
  decomposition $f=f_1^(n_1) ... f_r^(n_r)$, where each $f_i$ is an
  irreducible factor. Then $(f_i)$ is prime so that $V(f_i)$ is
  irreduceible. Indeed: $ V(f) = V(f_1) union ... union V(f_r) $
  where $V(f_i) = V_j$ for some $1 <= j <= r$. Suppose without loss
  of generality that $V(f_i)=V_i$. Then since each $f_i$ is
  irreducible, we get $V(f_i) cc.not V(f_j)$ for any $i != j$, and
  we get the required decomposition. Lastly, suppose that $f$ is an
  irreducible polynomial in $k[x_1, ..., x_n]$, then $Ic(V(f))$ is
  prime, so $Ic(V(f))=(f)$.
]

#proposition[
  Let $k$ be an algebraically closed field, and $af$ be an ideal in
  $k[x_1, ..., x_n]$. Then $V(af)$ is finite if, and only if
  $quotient(k[x_1, ..., x_n],af)$ is finite dimensional as a vector
  space over $k$. Moreover: $ |V(af)| <= dim_k quotient(k[x_1, ..., x_n],af) $
]<proposition1.5.6>
#proof[
  Let $K=quotient(k[x_1, ..., x_n],af)$, and suppose $K$ is finite
  dimensional as a vector space. Let $P_1, ..., P_r in V(af)$, and
  choose $f_1, ..., f_r in k[x_1, ..., x_n]$ such that $f_(i)(P_j)=0$
  for all $i != j$, and $f_(i)(P_i)=1$. Take $g_i equiv f_i mod af$ in
  $K$. Then for some $lambda_1, ..., lambda_r in k$
  $ lambda_1g_1+...+lambda_(r)g_r = 0 $
  so that $lambda_1f_1+...+lambda_(r)f_r in af$. Hence for all $i !=
  j$:
  $ lambda_j = (sum_(i != j) lambda_(i)f_i)(P_j) $ which makes the
  collection ${g_1, ..., g_r}$ linearly independent in $K$. This
  makes $r <= dim_k K < infinity$, and so $V(af)$ is finite. In
  fact, this makes $|V(af)|=r$.

  Now suppose that $V(af)={P_1, ..., P_r}$. Take $P_i=(a_(i 1), ...,
  a_(i n))$, and define: $ f_j(x_1, ..., x_n) = product_(i=1)^(r)(x_j-a_(i j)) $
  then $f_j in Ic(V(af))$, so that for sufficiently large $N in
  ZZ^+$, $f_j^N in af$ for all $1 <= j <= r$. Take $g_j equiv f_j
  mod af$, then $g_j^N = 0$ for all $1 <= j <= r$. Take $y_i equiv
  x_i mod af$. Then $y_i^(r N)$ is a linear combination of the set
  ${1, y, ..., y^(r N-1)}$. Therefore the set:
  $ {y_1, ..., y_n^(m_n) : m_i < r N} $
  generates the vector space $K$, and makes it finite dimensional.
]

#example[
  Consider the field $RR$, which is not algebraically closed. Let
  $f(x)=x^2+1$. Then $(f)$ is a proper ideal in $RR[x]$, but
  $V(f)=emptyset$. So the Weak Nullstellensatz only holds for
  algebraically closed fields.

  By consequence, Hilbert's Nullstellensatz also only holds for
  algebraically closed fields. Observe:
  $ Ic(V(f)) = Ic(emptyset) = RR[x] != sqrt((f)) = (f) $
  Now, since $quotient(RR[x],(f)) tilde.eq CC$, $(f)$ is a maximal
  ideal, hence it is prime, and hence it must be radical, but
  $Ic(V(f)) != (f)$.

  Finally observe that $RR$ is a finite dimensional vector space
  over itself of dimension $dim RR=1$. Now, take $f(x,y)=x^2-y^2+1$.
  Then:
  $ quotient(RR[x], (f)) tilde.eq quotient(RR[y], (y^2-1)) tilde.eq RR $
  we observe that $|V(f)| = 4 != 1$. This breaks @proposition1.5.6.
]<example1.5.7>

#example[
  + Take $f(x,y)=x^2+y^2-1$ and $g(x,z)=x^2+z^2-1$ in $CC[x,y,z]$.
    Then $V(f,g)=V(f) inter V(g)=V(h)$, where $h(y,z)=y^2-z^2$. Now,
    $h(y,z)=(y-z)(y+z)$, so $V(f,g) = V(z-z) union V(y+z)$ in
    $AA^3(CC)$.

  + Let $V=V(x^3-z, x^2-y)$ be the twisted cubic in $AA^3(CC)$.
    Observe that:
    $
    quotient(CC[x,y,z], (x^3-z, x^2-y)) tilde.eq quotient(CC[x,y,z], (x y-z))
      tilde.eq CC
    $
    so $(x^3-z, x^2-y)$ is a maximal ideal in $CC[x,y,z]$, hence it
    is prime, and hence radical in $CC[x,y,z]$. This makes $V(x^3-z,
    x^2-y)$ irreducible in $AA^(3)(CC)$.

  + Let $k$ be an algebraically closed field, and take
    $f(x,y)=y^2-x(x-1)(x-lambda)$ for any $lambda in k$. Observe:
    $
    quotient(k[x,y], (f)) tilde.eq quotient(k[x,y], (x(x-1)(x-lambda)))
      tilde.eq k
    $
    so $(f)$ is a maximal ideal, and hence radical in $k[x,y]$.
    Therefore, the algebraic set $V(y-x(x-1)(x-lambda))$ is irreducible in
    $AA^(2)(k)$.

  + Let $af=(y^2-x^2, y^2+x^2) cc CC[x,y]$. Then:
    $ quotient(CC[x,y], af) tilde.eq quotient(CC[x], (x^2)) tilde.eq CC $
    so $dim_(CC) quotient(CC[x,y], af)=1$. Moreover, observe that
    $|V(af)|=1$ since $P=(0,0)$ is the only point on the curves
    $y^2-x^2$ and $y^2+x^2$.
]<example1.5.8>
