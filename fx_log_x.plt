png_filename = "fx_log_x.png"
load "lib_common.plt"
set xrange [-pi*4:pi*4]
set yrange [-2:2]
plot log(x), exp(x)

