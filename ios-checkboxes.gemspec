$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ios-checkboxes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ios-checkboxes"
  s.version     = IosCheckboxes::VERSION
  s.authors     = ["Dmytrii Nagirniak", "Thomas Reynolds"]
  s.email       = ["dnagir@gmail.com"]
  s.homepage    = "https://github.com/dnagir/ios-checkboxes"
  s.summary     = "iOS checkboxes for Rails"
  s.description = "Easily convert your checkboxes into iPhone style On/Off buttons. Use with Rails 3.1 Assets Pipeline."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features,build}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 3.1"
  s.add_dependency "sass-rails"

  s.add_development_dependency "rspec-rails"
end
