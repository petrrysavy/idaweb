all: index.html background-1220464-1200.jpg background-1220464-600.jpg

index.html: index.md
	pandoc -t html -f markdown $< > $@

%-600.jpg: %.jpg
	convert -resize 600x $< $@

%-1200.jpg: %.jpg
	convert -resize 1200x $< $@