%.html: %.rst
	rst2html.py < $< > $@

all: description.html
