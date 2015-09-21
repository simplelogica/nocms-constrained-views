source 'https://rubygems.org'

# Declare your gem's dependencies in constrained_views.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]

group :test do
  gem 'faker'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'capybara'
end

gem 'acts-as-constrained', git: 'git@github.com:simplelogica/acts-as-constrained.git', branch: 'master'
gem "nocms-blocks", git: 'git@github.com:simplelogica/nocms-blocks.git', branch: 'features/skeletons'
