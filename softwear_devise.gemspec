$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "softwear_devise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "softwear_devise"
  s.version     = SoftwearDevise::VERSION
  s.authors     = ["Ben Cooper"]
  s.email       = ["coobenja@umich.edu"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SoftwearDevise."
  s.description = "TODO: Description of SoftwearDevise."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
