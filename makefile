all: index.html

index.html: index.md
	pandoc -t html -f markdown $< > $@
