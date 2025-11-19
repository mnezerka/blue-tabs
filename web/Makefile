
all: watch

.PHONY: gen
gen:
	./gen.sh

.PHONY: watch
watch:
	hugo server

.PHONY: build
build:
	hugo --minify

.PHONY: update
update:
	hugo mod clean
	hugo mod get -u

.PHONY: clean
clean:
	rm -rf public content*
