load "lib_common.plt"

set multiplot
set size 1, 0.5

set origin 0.0,0.5
set yrange [-2:2]
plot sin(x), cos(x), tan(x)

set origin 0.0,0.0
set yrange [-20:20]
plot x**2, x**3, x**4, x**5, x**6, x**7

unset multiplot   
