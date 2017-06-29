
load "lib_common.plt"
set size square 1, 1
set samples 1000
set xrange [-10 : 10]

a = 3
b = 3
f(x) = sqrt((-b**2)*(1-(x**2)/a**2))
g(x) = -sqrt((-b**2)*(1-(x**2)/a**2))
plot f(x) linestyle 1, g(x) linestyle 1
