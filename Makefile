all: clean
	pdflatex raport.tex
clean:
	rm -f *.pdf *.aux *.log
