load "lib_common.plt"
set parametric
set xrange [pi*-10 : pi*10]
set yrange [pi*-10 : pi*10]
set size square 1, 1
plot [0:pi*10] t*sin(t), t*cos(t)
