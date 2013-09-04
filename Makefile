%.html: %.rst
	rst2html.py < $< > $@

all: outline.html
