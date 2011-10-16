.SUFFIXES: .tex .dvi .aux .bbl .pdf
all: c81.dvi c81.pdf

.dvi.pdf:
	dvipdfmx -p a4 -f dlbase14.map -o $@ $<
.tex.dvi:
	nkf -e $< | platex
	nkf -e $< | platex
	mv texput.log $*.log
	mv texput.dvi $@
	mv texput.aux $*.aux

clean:
	rm *.aux *.log
