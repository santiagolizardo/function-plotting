load "lib_common.plt"

set title "Cardioid"
set parametric
set xrange [pi*-2 : pi*2]
set yrange [pi*-2 : pi*2]
set size square 1, 1
r(t) = 1 + cos(t)
plot [0:pi*2] r(t)*cos(t), r(t)*sin(t)
