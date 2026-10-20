#import "@preview/latexy-book:0.0.2": *

#show: book.with(
  title: [Algebra],
  subtitle: [Here be citations: @famaCrossSectionExpectedStock1992],
  author: [Alec S. Zabel-Mena, M.S.],
  date: datetime.today().display("[day] [month repr:long] [year]"),
  titlepage: true,
)


#frontmatter()
#outline()

#mainmatter()

= Part I: Group Theory<sec:part1>
#include("parts/group_theory/chapter1/chapter1.typ")


= Part II: Rings and Fields<sec:part2>
#lorem(50)
#include("parts/group_theory/chapter1/chapter1.typ")

= Part III: Module Theory<sec:part2>
#lorem(50)
#include("parts/group_theory/chapter1/chapter1.typ")

#backmatter()
#bibliography("ref.bib")
