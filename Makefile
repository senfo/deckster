all: build

build: deckster.css deckster.js

deckster.css: deckster.scss
	node-sass deckster.scss

deckster.js: deckster.coffee
	coffee -c deckster.coffee

zip: deckster.js deckster.css demo.html jquery-2.0.3.min.js
	zip deckster-0.0.1.zip deckster.js deckster.css demo.html jquery-2.0.3.min.js

lint: coffeelint jshint csslint tidy

coffeelint: deckster.coffee
	-coffeelint --nocolor -r .

jshint: deckster.js package.json
	-jshint .
	-jshint *.json

csslint: deckster.css
	-csslint .

tidy: demo.html
	-tidy demo.html 2>&1

clean:
	-rm *.zip
	-rm deckster.css
	-rm deckster.js
