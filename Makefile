#https://jekyllrb.com/docs/github-pages/
BRANCH=$(shell git rev-parse --abbrev-ref HEAD )

git:
	git push origin ${BRANCH}

serve:
	bundle exec jekyll serve

install_jekyll:
	jekyll _3.4.0_ new ./

new_theme:
	jekyll new-theme ${THEME}

package_theme:
	gem build ${THEME}.gemspec

gems:
	bundle install --binstubs

notogo:
	# Install Jekyll and Bundler gems through RubyGems
	gem install jekyll bundler
	# Create a new Jekyll site at ./myblog
	jekyll new myblog
	# Change into your new directory
	cd myblog
	# Build the site on the preview server
	bundle exec jekyll serve
	# Now browse to http://localhost:4000

get_theme:
	wget https://gitlab.com/andrewbanchich/forty-jekyll-theme/repository/archive.zip?ref=master

clean:
	find ./ -name .DS_Store -delete
