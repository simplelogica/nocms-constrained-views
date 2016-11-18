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

  s.add_dependency "rails", " > 4.0", "< 5.1"
  s.add_dependency "acts-as-constrained", ">= 0.0.1", "< 0.1"
  s.add_dependency "nocms-blocks", ">= 1.1.0", "< 1.1.5"
  s.add_dependency "activeresource", ">= 4.0.0", '< 5.1'

end
