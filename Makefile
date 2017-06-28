
PLT_FILES=$(wildcard fx_*.plt)
PNG_FILES=$(PLT_FILES:.plt=.png)

.SUFFIXES: .plt .png

all: $(PNG_FILES)

.plt.png:
	@echo -n Processing $<...\ 
	@gnuplot $<
	@echo done\!

clean:
	rm -f *.png

