$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "constrained_views/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "constrained_views"
  s.version     = ConstrainedViews::VERSION
  s.authors     = ["David J. Brenes"]
  s.email       = ["davidjbrenes@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ConstrainedViews."
  s.description = "TODO: Description of ConstrainedViews."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
