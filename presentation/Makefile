.PHONY: all
all: Index.html Questions.html Background.html FutureWork.html FlightTests.html Origami.html About.html Results.html

%.html: %.md
	markdown $< > $@

.PHONY: clean
clean:
	-rm *.html

