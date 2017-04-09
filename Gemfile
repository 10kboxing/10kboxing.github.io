source 'https://rubygems.org'
gem 'jekyll', '>= 3.0'

# for jekyll-assets
# use own less.rb fork to allow remote include (used for google fonts)
gem 'less', :github => 'abeMedia/less.rb', :submodules => true
gem 'therubyracer' # required for LESS
gem 'uglifier'
gem 'mini_magick'
gem 'image_optim'
gem 'image_optim_pack'

group :jekyll_plugins do
  gem 'jekyll-widgets'
  gem 'jekyll-sitemap'
  gem 'jekyll-assets'
  gem 'autoprefixer-rails'
  gem 'jekyll-tidy'
  gem 'jekyll-youtube'
end


# for travis (as ruby 2.3.0 needs to download binary on each build)
gem 'rack', '< 2.0'
