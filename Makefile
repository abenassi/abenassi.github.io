.PHONY: pdf build serve

serve:
	mkdocs serve

build:
	mkdocs build
	rsync -vau --remove-source-files site/ ./
	rm -rf site

pdf:
	mkdocs_abenassi md2pdf src/index.md pdf/cv-agustin-benassi.pdf
	mkdocs_abenassi md2pdf src/index_ds.md pdf/ds/cv-agustin-benassi.pdf
