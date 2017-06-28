
PLT_FILES=$(wildcard fx_*.plt)
PNG_FILES=$(PLT_FILES:.plt=.png)

.SUFFIXES: .plt .png

all: clean $(PNG_FILES)

.plt.png:
	@echo -n Processing $< ...\ 
	@gnuplot $<
	@echo \![$@ graph]\($@ \"$@ graph\"\) >> index.md
	@echo done\!

clean:
	@echo -n Cleaning generated files...\ 
	@rm -f index.md *.png
	@echo done\!

