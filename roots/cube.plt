load "common.plt"
set xrange [-6 to 6]
set yrange [-6 to 6]
set samples 1000
set size square
plot x**(1./3.) ls 1, -(-x)**(1./3.) ls 1
