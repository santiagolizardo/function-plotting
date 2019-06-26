load "lib_common.plt"
set terminal pngcairo  transparent enhanced font "arial,8" fontscale 1.0 size 512, 280 
set clip two
set bar 1.000000 front
set style fill  transparent solid 0.50 noborder
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set key inside left top vertical Left reverse enhanced autotitle nobox
set key noinvert samplen 1 spacing 1 width 0 height 0 
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set style data lines
set style function filledcurves y1=0
set xrange [ -5.00000 : 5.00000 ] noreverse nowriteback
set yrange [ 0.00000 : 1.00000 ] noreverse nowriteback
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
unset colorbox
Gauss(x,mu,sigma) = 1./(sigma*sqrt(2*pi)) * exp( -(x-mu)**2 / (2*sigma**2) )
d1(x) = Gauss(x*3, 0, 1.5)
plot d1(x) fs solid 1.0 lc rgb "forest-green"
