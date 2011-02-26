# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "modlr/version"

Gem::Specification.new do |s|
  s.name        = "modlr"
  s.version     = Modlr::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Radford"]
  s.email       = ["nick@nicholasradford.com"]
  s.homepage    = ""
  s.summary     = %q{Model test data generator}
  s.description = %q{Generate some sensical test data for your models.}

  s.rubyforge_project = "modlr"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
