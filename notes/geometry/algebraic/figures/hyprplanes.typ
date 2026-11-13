#import "@preview/cetz:0.5.3"

#cetz.canvas({
  import cetz.draw : *

  set-style( fill: black, radius: 0.1 )

  circle( name: "A", (0,0) )
  circle( name: "B", (3,1) )
  circle( name: "P", (2, -1) )

  line( "A", "B" )
  line( "P", ( project: "P", onto: ( "A", "B" ) ) )

})
