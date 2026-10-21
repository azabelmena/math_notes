#import "@preview/latexy-book:0.0.2": *
=== Definitions and Examples

#definition[
  Let $G$ be a set, we define a _binary operation_, $*$ on $G$ to be
  a map: $*:G --> G times G$ taking the pair $(a,b) --> a ast b$. We
  call a binary operation $*$ _associtative_ if for any $a,b,c in
  G$
  $
    (a * b) * c &= a * (b * c)
  $
  We call a binary operation $*$ _commutative_ if for any $a,b in
  G$, $a * b = b * a$.
]<definition1.1>

We also write $a b$ instead of $a * b$ for convenience and when
context is clear.

#example[
  + The usual addition $+$ is an associtative and commutative binary
    operation on the sets $ZZ$ of integers, $QQ$ of rationals, and
    $RR$ of real numbers. The addition $+$ of complex numbers $CC$,
    is also assoctiative and commutative.

  + The usual multiplication $dot.op$ is an assosiative and
    commutative binary operation on $ZZ$, $QQ$, and $RR$. Similarly,
    the multiplication of complex numbers is also associative and
    commutative over $CC$.

  + The usual subtraction is a non-commutative binary operation on $ZZ$,
    $QQ$, nor $RR$. Notice that if $a < b$, then $b-a in.not F$,
    where $F=ZZ,QQ,RR$. Complex subtraction is non-commutative on
    $CC$. The map $a --> -a$ is not a binary operation.

  + The usual subtraction is not a binary operation on $ZZ^+$,
    $QQ^+$, nor $RR^+$. Notice that if $a < b$, then $b-a in.not F$,
    where $F=ZZ,QQ,RR$.

  + The cross product $times$ on two vectors in real $3$-space is a
    non-associtative binary operation on $RR^3$.

  + The operation $+_n$ of addition modulo $n$ is a binary operation
    on the set $frac(ZZ, n ZZ, style:"skewed")$. Notice that for
    $k,l,m, in ZZ$, that $a mod n$ is of the form $a + k n$, and $b
    mod n$ and $c mod n$ have the forms $b + m n$ and $c + l m$,
    respectively. Thus:
    $
      ( (a + k n)+(b + m n) )+(c + l n)  &= ( (a+b)+(m+k)n )+(c+l n)  \
        &=  ( (a+b+c)+(m+k+l)n )  \
        &=  a+k n( (b+c)+(k+l)n )  \
        &= (a + k n)+((b + m n)+(c + l n))
    $
    so $(a+b)+c mod n=a+(b+c) mod n$.

    Similarlty,
    $
      (a + k n)+(b + m n) &= ( (a+b)+(k+m)n )  \
        &=   (b+a)+(m+k)n   \
        &= (b+m n)+(a+k n)  \
    $
    so $a+b mod n=b+a mod n$. This makes $+_n$ associtative and
    commutative over $frac(ZZ, n ZZ, style:"skewed")$.

  + Multiplication modulo $n$ is a binary operation on $frac(ZZ, n
    ZZ, style:"skewed")$ which is associative and commutative.

  + The operation of function composition $compose$ is a binary
    operation on any set of functions. For functions $f$,
    $g$, and $h$ we have: $(f compose g) compose h= f compose (g
    compose h)$. This makes $compose$ an associative binary
    operation, but it is not commutative; $f compose g eq.not g
    compose f$.
]<example1.1>

#definition[
  Let $G$ be a set, and $H subset.eq G$, and let $*$ be a binary
  operation on $G$. We say that $H$ is _closed_ under $*$ if $*|_H$
  is a binary operation on $H$.
]<definition1.2>

#definition[
  Let $G$ be a non-empty set, and let $*$ be a binary operation on
  $G$. We call the ordered pair $(G, *)$ a _group_ if:
  + For every $a,b in G$, $a b in G$. That is, $G$ is closed under
    $*$.

  + For every $a,b,c in G$, $a * (b * c)=(a * b) * c$; i.e. $*$ is
    associative over $G$.

  + There exists an element $e in G$ such that for every $a in G$,
    $a * e=e * a=a$. We call an element $e$ an _identity element_ of
    $G$.

  + For all $a in G$, there is an element $b in G$ such that $a *
    b=b * a=e$, where $e$ is an identity element of $G$. We call the
    element $b$ an _inverse_ of $a$.
]<definition1.3>

Instead of saying that the pair $(G, *)$ is a group, we will simply
say that $G$ is a group under $*$, or that $G$ is a group when $*$
is understood.

#example[
  + The set $G={e}$ of one element forms a group under any
    operation, and is called the _trivial_ group. We write $G=
    chevron.l e chevron.r$. We also observe that there is no group
    $G$ which is empty; i.e. the empty-set $emptyset$ is not a
    group.

    Suppose we removed the restriction that $G eq.not emptyset$ from
    the definition @definition1.3. Then if $G=emptyset$, then $G$ _cannot_
    be a group, since it fails the axiom of closure. Moreover, it
    fails the axioms for identity and inverse elements. This makes
    the trivial group $chevron.l e chevron.r$ the smallest possible
    group.

  + The sets $ZZ$, $QQ$, $RR$ are all groups under the usual
    addition. Here $0$ is the identity element, and $-a$ is the
    inverse of $a$. $CC$ is also a group under the complex addition,
    where $0=0+i 0$ is its identity, and for all $a=x+i y$, $-a=-x-i
    y$ is the inverse element.

  + The sets $QQ$, $RR$ are groups under the usual multiplication,
    with identity $1$ and inverse elements $a^(-1)=frac(1,a)$ for
    any $a$. $ZZ$ is not a group under the usual multiplication;
    observe for any $a in ZZ$, and $a eq.not 1$, that $frac(1,a)
    in.not ZZ$. $CC$ is also a group under its complex
    multiplication. It has identity $1=1+i 0$, and as inverse
    elements $frac(a,a^2+b^2)-i frac(b,a^2+b^2)$ for all $a+i b$.

  + Consider the set of integers modulo $n$, $frac(ZZ, n ZZ,
    style:"skewed")$, under the addition $+$ modulo $n$. Since $+$
    is a binary operation on $frac(ZZ, n ZZ, style:"skewed")$, then
    $frac(ZZ, n ZZ, style:"skewed")$ is closed under $+$. We also
    observe that $frac(ZZ, n ZZ, style:"skewed")$ satisfies
    associativity.

    Observe now that $n equiv 0 mod n$, and that $a+n=n+a equiv 0+a
    equiv a+0 mod n$, so $0 mod n$ is the identity element. Now $n-a
    equiv 0-a equiv -a mod n$ and $(n-a)+a=n+(a-a)=n equiv 0 mod n$,
    and $a+(n-a)=n+(a-a) equiv 0 mod n$. So $frac(ZZ, n ZZ,
    style:"skewed")$ forms a group under addition modulo $n$, with
    identity element $0 mod n$ and inverse elements $-a mod n$ for
    each $a in frac(ZZ, n ZZ, style:"skewed")$.
]<example1.2>

#definition[
  We call a group $G$ under a binary operation $*$ _commutative_ if
  for all $a,b in G$, $a * b=b*a$.
]<definition1.4>
