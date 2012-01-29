# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "route/version"

Gem::Specification.new do |s|
  s.name        = "route"
  s.version     = Route::VERSION
  s.authors     = ["Sammy Larbi"]
  s.email       = ["sam@codeodor.com"]
  s.homepage    = "https://github.com/codeodor/route"
  s.summary     = %q{Route is an experiment to see what it would look like if Rails controllers specified how to reach themselves, rather than having an omniscient routes.rb file.}
  s.description = %q{}

  #s.rubyforge_project = ""

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
