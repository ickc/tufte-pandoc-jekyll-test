# jsCompressor := 'uglifyis --mangle --compress'
jsCompressor := 'closure-compiler'

# jekyll serve
development:
	python -mwebbrowser http://127.0.0.1:4000
	bundle exec jekyll serve --profile --incremental --drafts
production:
	python -mwebbrowser http://127.0.0.1:4000
	JEKYLL_ENV=production bundle exec jekyll serve --profile --incremental

# remove generated files
clean:
	rm -rf _site/ .sass-cache/
	rm -f .jekyll-metadata Gemfile.lock

# install
init:
	gem install bundler
install:
	bundle update && bundle install
