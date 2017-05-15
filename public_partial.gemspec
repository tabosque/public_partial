$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "public_partial/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "public_partial"
  s.version     = PublicPartial::VERSION
  s.authors     = ["tabosque"]
  s.email       = ["info@tabosque.com"]
  s.homepage    = "https://github.com/tabosque/public_partial"
  s.summary     = "Public partial."
  s.description = "Public partial."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
end
