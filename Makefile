build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile -m --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

jumpstart:
	curl -u 'meryn' https://api.github.com/user/repos -d '{"name":"make-index-js", "description":"Generates JS code with require statements from given paths.","private":false}'
	mkdir -p src
	touch src/make-index-js.coffee
	mkdir -p test
	touch test/make-index-js.coffee
	npm install
	git init
	git remote add origin git@github.com:meryn/make-index-js
	git add .
	git commit -m "jumpstart commit."
	git push -u origin master

.PHONY: test