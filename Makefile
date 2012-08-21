JADE = ./node_modules/.bin/jade

HTML = index.html

docs: $(HTML)

%.html: %.jade
	$(JADE) --path $< < $< > $@

clean:
	rm -f *.html

.PHONY: docs clean