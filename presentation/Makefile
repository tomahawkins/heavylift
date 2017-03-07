.PHONY: all
all: Questions.html Background.html FutureWork.html FlightTests.html Origami.html About.html

%.html: %.md
	markdown $< > $@

.PHONY: clean
clean:
	-rm *.html

