
PLT_FILES=$(wildcard **/*.plt)
PNG_FILES=$(PLT_FILES:.plt=.png)
.SUFFIXES: .plt .png

all: clean $(PNG_FILES)

.plt.png:
	@echo -n Processing $< ...\ 
	@gnuplot -e "png_filename='$@'" $<
	@echo \![$@ graph]\($@ \"$@ graph\"\) >> index.md
	@echo done\!

clean:
	@echo -n Cleaning generated files...\ 
	@rm -f index.md
	@find . -name "*.png" -exec rm {} \;
	@echo done\!

