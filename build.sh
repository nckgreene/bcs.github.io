pandoc -t markdown_strict --citeproc bib-stuff/bib-conversion.md -o parts/02-references.txt --bibliography bib-stuff/refs.bib
cat parts/* > index.md
