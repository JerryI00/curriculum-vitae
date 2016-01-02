FILE=main

all:
	latex $(FILE)
	dvips -o $(FILE).ps $(FILE).dvi
	ps2pdf $(FILE).ps
#pdf:


clean:
	rm -f main.out main.aux main.dvi main.log main.bbl main.blg main.synctex.gz

cleanall: clean
	rm -f main.pdf main.ps
