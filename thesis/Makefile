TEX1=kandi
#TEX2=joku
#TEX3=jokutointn
#jne...

all:
	make $(TEX1).pdf	#Tähän lisätään kaikki kansiosta löytyvät ladottavat filut
	make clean		#Poistetaan samalla tarpeeton tauhka, lopputuloksena .tex- ja .pdf-filut

#Näitä lisää tarpeen mukaan, jokaiselle filulle oma sääntö
$(TEX1).pdf: $(TEX1).tex
	pdflatex $(TEX1).tex
	pdflatex $(TEX1).tex
	bibtex $(TEX1)
	pdflatex $(TEX1).tex
	pdflatex $(TEX1).tex


#Makro, joka vahtii tiedostoa ja latoo sen aina uudelleen kun tiedosto tallennetaan tekstieditorista käsin.
watch1:
	@while [ 1 ]; do inotifywait $(TEX1).tex; sleep 0.1; make all; done

#Poistaa tauhkat
clean:
	rm -rf *~ *.log *.out *.aux *.toc *.snm *.nav *.bbl *.blg

clean-pdf:
	rm -rf *~ *.log *.out *.aux *.toc *.snm *.nav *.bbl *.blg *.pdf

