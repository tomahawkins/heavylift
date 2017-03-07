.PHONY: all
all: README.html

%.html: %.md
	markdown $< > $@

3X-control.png: Charts.hs
	runhaskell -W Charts.hs

.PHONY: clean
clean:
	-rm *.html

