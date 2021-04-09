filename=thesis
compiler=pdflatex

all:
	${compiler} ${filename}.tex
	bibtex ${filename}.aux
	${compiler} ${filename}.tex
	${compiler} ${filename}.tex
	
pdf: all
#	pdflatex ${filename}.tex
	rm -f ${filename}.log ${filename}.aux ${filename}.out ${filename}.lof ${filename}.lot ${filename}.toc ${filename}.bbl ${filename}.blg

clean:
	rm -f ${filename}.pdf ${filename}.log ${filename}.aux ${filename}.out ${filename}.lof ${filename}.lot ${filename}.toc ${filename}.bbl ${filename}.blg

#https://www.systutorials.com/a-simple-makefile-for-latex/
