.SUFFIXES: .tex .dvi .aux .bbl .pdf
all: c81.dvi c81.pdf

.dvi.pdf:
	dvipdfmx -p a4 -f dlbase14.map -o $@ $<
.tex.dvi:
	platex $<
	platex $<

clean:
	rm *.aux *.log

clean-all:
	rm c81.dvi c81.pdf *.aux *.log
