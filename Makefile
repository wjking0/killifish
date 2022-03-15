
.DEFAULT_GOAL := deploy

serve:
		mkdocs serve -a localhost:8000

build:
		@echo Building mkdocs
		mkdocs build
		@echo ''
		@echo Run make deploy to publish to GitHub
		@echo ''

deploy:
		@echo Cleaning site dir
		rm -rf site/
		@echo Building docs
		mkdocs gh-deploy

clean:
		@echo Cleaning site dir
		rm -rf site/

.PHONY: serve build deploy clean

