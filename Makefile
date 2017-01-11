.PHONY: all
all: README.html 3X-control.png

README.html: README.md
	markdown README.md > README.html

3X-control.png: Charts.hs
	runhaskell -W Charts.hs

.PHONY: clean
clean:
	-rm *.html

