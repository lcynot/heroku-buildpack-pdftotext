build: build-heroku-22 build-heroku-20 build-heroku-18 build-heroku-16 build-cedar-14 build-cedar-10

build-heroku-22:
	@echo "Building pdftotext in docker for heroku-22..."
	@docker run -e "POPPLER_VERSION=21.09.0" -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-22" heroku/heroku:22-build bash -c 'cd /buildpack; scripts/build_pdftotext /buildpack/bin/pdftotext-heroku-22'
	@echo ""

shell:
	@echo "Opening heroku-16 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" -e "PORT=5000" heroku/heroku:16-build bash -c 'cd /buildpack; bash'
	@echo ""
