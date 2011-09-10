# Gemfile
#
# For production mode PostgreSQL option :
#   bundle install --without development test mysql sqlite
# For production mode MySQL option :
#   bundle install --without development test postgresql sqlite
#
# Make sure to decleare at least one 'source'
source 'http://rubygems.org'

# Bundler requires these gems in all environments
gem "rails"
gem 'exception_notification'
#gem "prototype-rails" Will be needed with Rails3.1
gem "db_populate"
gem "rubyzip"
gem "ya2yaml"
gem "i18n"
gem "will_paginate"
gem 'fastercsv', :platforms => :ruby_18
gem "routing-filter"
gem "dynamic_form"

# To be removed
gem "prototype_legacy_helper",
    "0.0.0",
    :git => "https://github.com/rails/prototype_legacy_helper.git"

# If you are a MarkUs developer and use PostgreSQL, make sure you have
# PostgreSQL header files installed (e.g. libpq-dev on Debian/Ubuntu).
# Then install your bundle by:
#   bundle install --without mysql sqlite
group :postgresql do
  gem "pg"
end

# If you are a MarkUs developer and use MySQL, make sure you have
# MySQL header files installed (e.g. libmysqlclient-dev on Debian/Ubuntu).
# Then install your bundle by:
#   bundle install --without postgresql sqlite
group :mysql do
  gem "mysql"
end

# If you are a MarkUs developer and use SQLite, make sure you have
# SQLite header files installed (e.g. libsqlite3-dev on Debian/Ubuntu).
# Then install your bundle by:
#   bundle install --without postgresql mysql
group :sqlite do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

# Other development related required gems. You don't need them
# for production.
group :development, :test do
  gem "rdoc"
  gem "rcov"
  gem "shoulda"
  gem "machinist"
  gem "faker"
  gem "railroady"
  gem "time-warp"
  gem 'ruby-debug', :platforms => :mri_18
  gem 'ruby-debug19', :require => 'ruby-debug', :platforms => :mri_19
  gem "mocha"
end
