.PHONY: clean

main: index.html

index.html: index.md publications.bib style.css
	pandoc -s index.md -C --bibliography publications.bib -o index.html --css style.css

clean:
