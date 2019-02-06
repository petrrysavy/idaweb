all: index.html

index_untidy.html: index.md
	pandoc -t html -f markdown $< > $@

index.html: index_untidy.html
	-tidy -q $< > $@
	rm $<
