FILENAME  = impressions
TEX       = $(FILENAME).tex
AUX       = $(FILENAME).aux
DVI       = $(FILENAME).dvi
PDF       = $(FILENAME).pdf
all:
	make tex
	make tex
	make dvipdf
	make rmlog
	open $(PDF)
bbl:
	make tex
	make bbl
	make tex
	make tex
	make tex
	make dvipdf
	make rmlog
	open $(PDF)
rmlog:
	rm -f $(FILENAME).aux $(FILENAME).dvi $(FILENAME).log $(FILENAME).toc $(FILENAME).lof
	rm -f $(FILENAME).lot $(FILENAME).out $(FILENAME).bbl $(FILENAME).blg
tex:
	platex $(TEX)
bbl:
	pbibtex $(AUX)
dvipdf:
	dvipdfmx $(DVI)
