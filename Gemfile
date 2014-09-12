source 'https://rubygems.org'

# Specify your gem's dependencies in junar.gemspec
gemspec

# There is a deprecation in the published safe_yaml gem that prompts an error message during rspec tests. This is a temporary workaround.
gem 'safe_yaml', git: 'https://github.com/dtao/safe_yaml.git'
gem 'hashie'
gem 'httparty', git: 'https://github.com/howdoicomputer/httparty.git'

group :doc do
  gem 'redcarpet'
  gem 'yard'
end

group :test do
  gem 'rspec'
  gem 'rspec-mocks'
  gem 'vcr'
  gem 'webmock'
end
