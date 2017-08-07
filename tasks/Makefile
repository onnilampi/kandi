TEX1=tekstipaja1
TEX2=kypsyysnayte

all:
	make $(TEX1).pdf
	make $(TEX2).pdf
	make clean

$(TEX1).pdf: $(TEX1).tex
	pdflatex $(TEX1).tex
	pdflatex $(TEX1).tex

$(TEX2).pdf: $(TEX2).tex
	pdflatex $(TEX2).tex
	pdflatex $(TEX2).tex



watch1:
	@while [ 1 ]; do inotifywait $(TEX1).tex; sleep 0.1; make all; done

watch2:
	@while [ 1 ]; do inotifywait $(TEX2).tex; sleep 0.1; make all; done





clean:
	rm -rf *~ *.log *.out *.aux *.toc *.snm *.nav	
