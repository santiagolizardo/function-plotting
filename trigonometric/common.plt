load "common.plt"

set border 0

set tmargin 4
set rmargin 12

set tics nomirror
set xtics axis
set xtics ("-2π" -2*pi, "-π" -pi, "0" 0, "π" pi, "2π" 2*pi)
set mxtics 2
set format x '%.0Pπ'

set label "x" at graph 1.12, 0.5 center
set xrange [-2*pi : 2*pi]
set arrow from graph 0,0.5 to graph 1.1,0.5 filled # horizontal

set label "y" at graph 0, 1.14 center
set yrange [-1 : 1]
set arrow from graph 0,0.5 to graph 0,1.1 filled # vertical
