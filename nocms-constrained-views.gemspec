$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/constrained_views/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-constrained-views"
  s.version     = NoCms::ConstrainedViews::VERSION
  s.authors     = ["David J. Brenes"]
  s.email       = ["david.brenes@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-constrained-views"
  s.summary     = "Gem with constrained versions for objects functionality independent from any CMS embeddable in any Rails 4 app"
  s.description = "Gem with constrained versions for objects functionality independent from any CMS embeddable in any Rails 4 app"
  s.license     = "GPL"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", " > 4.0", "< 4.3"
  s.add_dependency "acts-as-constrained", "~> 0.0.1"

  s.add_development_dependency "sqlite3"
end
