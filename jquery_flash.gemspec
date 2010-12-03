# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery_flash/version"

Gem::Specification.new do |s|
  s.name        = "jquery_flash"
  s.version     = JqueryFlash::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["krishna-shilpakar"]
  s.email       = ["shilpakar.kris@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/jquery_flash"
  s.summary     = %q{Jquery flash for rails}
  s.description = %q{}

  s.rubyforge_project = "jquery_flash"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  s.add_dependency('rails',        '~> 3.0.0')
  s.add_dependency('cucumber',        '~> 0.9.4')
  s.add_dependency('rspec',           '~> 2.1.0')
  s.add_dependency('bundler',         '~> 1.0.7')
end
