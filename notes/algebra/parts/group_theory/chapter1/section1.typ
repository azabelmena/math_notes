#import "@preview/quire:0.1.0": *
#import "../../../lib.typ" : *

=== Definitions and Examples

#definition[
  Let $G$ be a set. We define a _binary operation_ on $G$ to be a
  map $ast: G times G -> G$ that takes $(a,b) -> a ast b$. We call a
  binary operation $ast$ _associative_ if for any $a,b,c in G$:
              $ a ast (b ast c) = (a ast b) ast c $
  We call a binary operation $ast$ on $G$ _commutative_ if for every
  $a,b in G$:
              $ a ast b=b ast a $
]<definition1.1.1>
#remark[
  When the context is clear, we will abbreviate $a ast b$ as $a b$.
]

#example[
  + The usual addition, $+$ is an associative and commutative binary
    operation on the sets $ZZ$, $ZZ$, $QQ$, and $RR$. The addition
    of complex numbers is also associative and commutative on the
    set $CC$.
  + The usual multiplication $cdot$ is an associative and
    commutative binary operation on the sets $ZZ^*$, $QQ^*$, and
    $RR^*$. Complex multiplication on $CC^*$ is also an associative
    commutative binary operation. We define $F^*=com(F, {0})$, where
    $F=ZZ,QQ,RR,CC$.

  + The usual subtraction $-$ is not a binary operation on the sets
    $ZZ^+$, $QQ^+$, nor $RR^+$. Notice that if $a<b$, then $a-b
    notin F$, where $F=ZZ,QQ,RR$.

  + The cross-product, $times$ on two vector in real $3$-space
    $RR^3$ is a non-associative binary operation.

  + The operation $+_n$ (which we abbreviate $+$) of addition
    modulo $n$ is a binary operation on the set $quotient(ZZ, n
    ZZ)$. Notice for $k,l,m in ZZ$, that $a mod n$ is of the form
    $a+k n$, thus $b mod n$ and $c mod n$ are of the form $b+l n$
    and $c+ m n$. Thus:
    $
      ((a+k n) + (b+l n)) + (c+m n)  &=  (a+b)+(l+k)n+(c+m n) \
        &= (a+b+c)+(l+k+m)n \
        &= (a+k n)+(b+c)+(l+m n)  \
        & = (a+k n)+( (b+l n)+(c+m n) )
    $
    So $(a+b)+c mod n=a+(b+c) mod n$. Additionally, $+$ is
    commutative in $quotient(ZZ, n ZZ)$.

  + Multiplication modulo $n$ on $quotient(ZZ, n ZZ)$ is also an
    associative and commutative binary operation.

  + The operation of function composition $compose$ is a binary
    operation on any set of functions. We have for functions
    $f,g,h$, that $(f compose g) compose h=f compose (g compose h)$,
    which makes $compose$ associtative. However, $f compose g != g
    compose h$, which makes $compose$ non-commutative.
]<example1.1.3>

#definition[
  Let $G$ be a set, and let $H cc G$, and let $ast$ be a binary
  operation on $G$. We say that $H$ is _closed_ under $ast$ if
  $ast|_H$ is a binary operation on $H$.
]<definition1.1.4>

#definition[
  Let $G$ be a non-empty set, and let $ast$ be a binary operation on
  $G$. We call the pair $(G, ast)$ a _group_ if:
  + For every $a,b in G$, $a ast b in G$; that is, $G$ is closed
    under $ast$.

  + For every $a,b,c in G$:
      $ a ast (b ast c)=(a ast b) ast c $
    That is, $ast$ is associative in $G$.

  + There exists an element $e in G$ called an _identity element_ of
    $G$, such that for every $a in G$:
        $ a ast e = a " and " e ast a = a $
  + For each element $a in G$, there exists an element $b in G$,
    called an _inverse element_ to $a$, such that:
        $ a ast b = e " and " b ast a = e$
    where $e$ is an identity element of $G$.
]<definition1.1.5>
#remark[
  Instead of stating $(G, ast)$ as a group, we will often just say
  that $G$ is a group under $ast$; or that $G$ is a group.
]

#example[
  + Let $G={e}$ of one element forms a group under any operation,
    and is called the _trivial group_; we denote it by
    $G=cyclic(e)$. We also observe that the empty-set $emptyset$ is
    not a group, as any group admits an identity element. Therefore
    the trivial group $cyclic(e)$ is the smallest possible group.

  + The sets $ZZ$, $QQ$, and $RR$ are all groups under the usual
    addition. Here the identity element is $0$, and $-a$ is the
    inverse of $a$. $CC$ is a group under the complex addition, with
    $0=0+i 0$ the identity and $-a-i b$ the invers of $a+i b$.

  + $QQ$ and $RR$ are groups under the usual multiplication, with
    identity $1$ and inverse $inv(a)=1/a$.

    $ZZ$ is not a group under multiplication, as if $n in ZZ$, then
    the fraction $1/n notin ZZ$.

    $CC$ is a group under complex multiplication. The identity is
    given by $1=1+i 0$, and the inverse to the element $a+i b$ is
    the element $a/(a^2+b^2)-i b/(a^2+b^2)$.

  + Consider the set of integers modulo $n$, $quotient(ZZ, n ZZ)$.
    Since $+$ is a binary operation on $quotient(ZZ, n ZZ)$, closure
    is guaranteed, $quotient(ZZ, n ZZ)$ also inherits the
    associativity (see @example1.1.3(5)).

    Notice that $n equiv 0 mod n$ by definition, so for any $a in
    ZZ$, $a+n mod n=a+0 mod n=a mod n$ and $n+a mod n=0+a mod n=a
    mod n$. Likewise, $n-a mod n = 0-a mod n = -a mod n$, and
    $a+(-a) mod n = a+(n-a) mod n = n+(a-a) mod n = n mod n = 0 mod
    n$, and $-a+a mod n = (n-a)+a mod n = n+(-a + a) mod n = n mod n
    = 0 mod n$. So $quotient(ZZ, n ZZ)$ is a group under addition
    modulo $n$, $+_n$, with identity element $0 mod n$ and inverse
    elements $-a mod n$.
]<example1.1.7>

#definition[
  We call a group $G$ under a binary operation $ast$ _Abelian_ if
  for every $a,b in G$:
      $ a ast b = b ast a $
]<definition1.1.8>
