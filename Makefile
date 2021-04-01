ifeq ($(PREFIX),)
	PREFIX:= ./.
endif

.PHONY: build clean watch

build:
	hugo --minify

watch:
	hugo server --watch --minify --buildDrafts --buildFuture

clean:
	rm -rf public resources

install: build
	cp -r public $(PREFIX)
