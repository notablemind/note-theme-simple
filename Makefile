
build: note-theme-simple.css components
	@component build --dev

note-theme-simple.css: index.less
	@lessc index.less > note-theme-simple.css

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
