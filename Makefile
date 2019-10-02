serve:
	mkdocs serve

build:
	mkdocs build
	rsync -vau --remove-source-files site/ ./
	rm -rf site
