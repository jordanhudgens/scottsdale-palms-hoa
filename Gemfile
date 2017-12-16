source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'rspec-rails', '~> 3.7'
gem 'rails-controller-testing'
gem 'slim-rails', '~> 3.1'
gem 'pundit', '~> 1.1'
gem 'devise', '~> 4.3'
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'font-awesome-rails', '~> 4.7'
gem 'gritter', '~> 1.2'
gem 'hirb', '~> 0.7.3'
gem 'kaminari', '~> 1.1'
gem 'devcamp_view_tool', '~> 0.1.0'
gem 'faker', '~> 1.8'
gem 'popper_js'
