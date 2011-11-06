# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby_free_chart/version"

Gem::Specification.new do |s|
  s.name        = "ruby_free_chart"
  s.version     = RubyFreeChart::VERSION
  s.authors     = ["Christian Hein"]
  s.email       = ["info@kumbel.com.ar"]
  s.homepage    = ""
  s.summary     = %q{Simple Ruby wrapper for JFreeChart}
  s.description = %q{Simple Ruby wrapper for JFreeChart}

  s.rubyforge_project = "ruby_free_chart"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
