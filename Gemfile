source 'http://rubygems.org'

gem 'rails', '3.1.1'

gem 'jquery-rails'

group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'turn', :require => false
  gem 'minitest'
end

platforms :jruby do
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jruby-openssl'
  group :assets do
    gem 'therubyrhino'
  end
end

platforms :ruby do
  gem 'sqlite3'
  group :assets do
  	gem 'therubyracer'
  end
end