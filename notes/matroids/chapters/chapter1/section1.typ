#import "@preview/quire:0.1.0": *
#import "../../lib.typ" : *

== Independence, Dependence, and Circuits

#definition[
  A _matroid_ is a pair $(E, cal(I))$ consisting of a finite set $E$
  and a collection $cal(I) cc 2^E$ such that:
  #enum( numbering: n => [(I#n)] )[
    $emptyset in cal(I)$.
  ][
    If $I in cal(I)$, and $I' cc I$, then $I' in cal(I)$.
  ][
    If $I_2, I_2 in cal(I)$, and $|I_1|<|I_2|$, then there exists an
    element $e in com(I_2,I_1)$ such that $I_1 union e in cal(I)$.
  ]
  We call the property (I2) the _heredetery axiom_, and we call (I3)
  the _augmentation axiom_. We call the elements of $cal(I)$
  _independent sets_, and we call $E$ the _ground set_.
]<definition1.1.1>

#definition[
  Let $M=(E, cal(I))$ be a matroid. We call a set $D notin cal(I)$ a
  _dependent set_ of $M$.
]<definition1.1.2>

#example[
  Let $V$ be a finite vector space and $cal(I)$ the collection of
  all linearly independent subsets of $V$. Then $(V, cal(I))$ is a
  matroid.
]<example1.1.3>

#proposition[
  Let $E$ be the set of columns of an $m times n$ matrix $A$ over a
  field $F$, and let $cal(I)$ be the collection of subsets of $E$
  for which the multiset of columns of $E$ forms a set and is
  linearly independent in the vector space $V(m,F)$. Then the pair
  $(E, cal(I))$ is a matroid.
]<proposition1.1.4>
#proof[
  $emptyset $ is independent in $E$ by definition. Now, take $I cc
  cal(I)$ and $J cc I$. Then since $I$ is linearly independent, then
  so is $J$, which makes $J in cal(I)$.

  Now, let $I, J in cal(I)$ with $|I|<|J|$. Let $W$ be the subspace
  spanned by $I union J$. then $|J| < dim W$. Now, suppose that $I
  union e$ is linearly dependent for all $e in com(J,I)$. Then
  $W cc span I$, and $|J| <= dim W <= |I|<|J|$, which is a
  contradiction.
]

#definition[
  Let $A$ be an $m times n$ matrix. We define the _vector matroid_
  to be the matroid $M[A]$ obtained from the above
  @proposition1.1.4.
]<definition1.1.5>

#example[
  Consider the following $2 times 5$ matrix:
  $
  A = mat(
    1 , 0 , 0 , 1 , 1 ;
    1 , 0 , 0 , 1 , 1 ;
  )
  $
  label the columns of $A$ as $E={1, 2, 3, 4, 5}$, respectively.
  Then $cal(I)$ consists of the following subsets:
  $
    emptyset  \
    {1} " " {2} " " {4} " " {5} \
    {1,2} " " {1,5} " " {2,4} " " {2,5} " " {4,5} \
  $
  we observe the dependent sets, $cal(D)$, of $M[A]$ are given by:
  $
  {3} \
  {1, 3} " " {1,4} " " {2,3} " " {3,4} " " {3, 5} \
  {X cc E : |X| >= 3}
  $
]<example1.1.6>

#definition[
  Let $M$ be a matroid on a set $E$. We call a minimal dependenc set
  $C$ a _circuit_ of $M$. We denote the set of circuits of $M$ by
  $cal(C)$, or $cal(C)(M)$. If $C$ is a circuit with $|C|=n$, then
  we call $C$ an _$n$-circuit_.
]<definition1.1.7>

#lemma[
  Let $M=(E, cal(I))$ be a matroid. Then the following statements
  are true for the set $cal(C)$ of circuits of a matroid:
  #enum( numbering: n => [(C#n)] )[
    $emptyset notin cal(C)$.
  ][
    If $C_1, C_2 in cal(C)$, and $C_1 cc C_2$, then $C_1=C_2$.
  ][
    If $C_1, C_2 in cal(C)$ are distinct circuits, and $e in C_1
    inter C_2$, then there exists a circuit $C_3 in cal(C)$ such
    that: $C_3 cc com((C_1 union C_2), e)$.
  ]
]<lemma1.1.8>
#proof[
  Axioms (C1) and (C2) are both contrapositives of axioms (I1) and
  (I2) from @definition1.1.1. Now, to prove (C3), let $C=com( (C_1
  union C_2), e)$, and suppose that $C$ contains no circuit. Then $C
  in cal(I)$. Now, by (C2), $C != emptyset$, so choose an element $f
  in C$. Since $C_2$ is a circuit, $com(C_2,f) in cal(I)$. Now,
  choose an maximal independent set $I cc C_1 union C_2$ such that
  $com(C_2, f) cc I$. Then $f notin I$. Now, since $C_1$ is a
  circuit, there exists an element $g in C_1$ such that $g notin I$.
  Then $g in com(C_2, C_1)$, and $g != f$. Hence, we observe:
  $ |I| <= com( (C_1 union C_2), {f,g} ) = |C_1 union C_2|-2<|C| $
  By the augmentation axiom on $I$ and $C$, the resulting
  independent set $I union e in cal(I)$, which contradicts the
  maximality of $I$. Therefore, $C$ must contain a circuit.
]
