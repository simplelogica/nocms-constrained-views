# Current Ruby version
ruby_version = Gem::Version.new(RUBY_VERSION)

# Globalize latest version (5.3.0) demands ruby over 2.4.6. We need to force
# another version in prior versions
ruby_2_4_6 = Gem::Version.new('2.4.6')

appraise "rails-4-0-mysql" do
  gem "mysql2", "~> 0.3.0"
  gem "rails", "4.0.13"
end

appraise "rails-4-1-mysql" do
  gem "mysql2", "~> 0.3.0"
  gem "rails", "4.1.13"
end

appraise "rails-4-2-mysql" do
  gem "mysql2", "~> 0.3.0"
  gem "rails", "4.2.4"
end

appraise "rails-5-0-mysql" do
  gem "mysql2", "~> 0.3.0"
  gem "rails", "5.0.0"
  gem "acts-as-constrained", git: 'git@github.com:simplelogica/acts-as-constrained.git', branch: 'edge'
  gem "nocms-blocks", git: 'git@github.com:simplelogica/nocms-blocks.git', branch: 'edge'
  gem "globalize", git: 'git@github.com:globalize/globalize.git', branch: 'master'
  gem "activesupport", "~> 5.0.0"
  gem 'activeresource', github: 'rails/activeresource'
end

appraise "rails-4-0-pgsql" do
  gem "pg"
  gem "rails", "4.0.13"
end

appraise "rails-4-1-pgsql" do
  gem "pg"
  gem "rails", "4.1.13"
end

appraise "rails-4-2-pgsql" do
  gem "pg"
  gem "rails", "4.2.4"
end

appraise "rails-5-0-pgsql" do
  gem "pg"
  gem "rails", "5.0.0"
  gem "acts-as-constrained", git: 'git@github.com:simplelogica/acts-as-constrained.git', branch: 'edge'
  gem "nocms-blocks", git: 'git@github.com:simplelogica/nocms-blocks.git', branch: 'edge'
  gem "globalize", git: 'git@github.com:globalize/globalize.git', branch: 'master'
  gem "activesupport", "~> 5.0.0"
  gem 'activeresource', github: 'rails/activeresource'
end

appraise "rails-5-2-3-pgsql" do
  gem "pg"
  gem "rails", "5.2.3"

  gem "acts-as-constrained", git: 'git@github.com:simplelogica/acts-as-constrained.git', branch: 'edge'
  gem "nocms-blocks", git: 'git@github.com:simplelogica/nocms-blocks.git', branch: 'edge'

  if ruby_version < ruby_2_4_6
    gem 'globalize', '~> 5.2.0'
  else
    gem "globalize", git: 'git@github.com:globalize/globalize.git', branch: 'master'
  end

  gem "activesupport", "~> 5.2.3"
  gem 'activeresource', github: 'rails/activeresource'

  group :test do
    gem 'rspec-rails', '~> 3.7'
  end
end


appraise "rails-6-0-0-pgsql" do
  gem "pg"
  gem "rails", "6.0.0"

  gem "acts-as-constrained", git: 'git@github.com:simplelogica/acts-as-constrained.git', branch: 'feature/PY03782-32-azu-migration-ruby-and-rails-edge'
  gem "nocms-blocks", git: 'git@github.com:simplelogica/nocms-blocks.git', branch: 'feature/PY03782-32-azu-migration-ruby-and-rails'

  gem 'globalize', '~> 6.0.0'

  gem "activesupport", "~> 6.0.0"
  gem 'activeresource', github: 'rails/activeresource'

  group :test do
    gem 'rspec-rails', '~> 5.0.2'
  end
end
