
PORT ?= 3000
SERVE ?= ./node_modules/.bin/serve
STYLUS ?= ./node_modules/.bin/stylus

test:
	$(SERVE) . --port $(PORT) &
	open http://localhost:$(PORT)/$@/index.jade

dist/button.css: lib/defaults.styl
	$(STYLUS) < $^ > $@

.PHONY: test
