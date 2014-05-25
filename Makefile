
PORT ?= 3001
SERVE ?= ./node_modules/.bin/serve
STYLUS ?= ./node_modules/.bin/stylus

test: dist/type.css
	npm install -d
	open http://localhost:$(PORT)/$@/index.jade
	$(SERVE) . --port $(PORT)

clean:
	rm -rf node_modules/
	rm dist/type.css

dist/type.css: index.styl
	$(STYLUS) \
	--include node_modules \
	< $^ > $@

.PHONY: test clean dist/type.css
