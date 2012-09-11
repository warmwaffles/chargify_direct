# -*- encoding: utf-8 -*-
require File.expand_path('../lib/chargify_direct/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matthew Johnston"]
  gem.email         = ["warmwaffles@gmail.com"]
  gem.description   = %q{Talks to Chargify Direct}
  gem.summary       = %q{}
  gem.homepage      = 'http://github.com/warmwaffles/chargify_direct'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "chargify_direct"
  gem.require_paths = ["lib"]
  gem.version       = ChargifyDirect::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "debugger"

  s.add_runtime_dependency 'hashie'
  s.add_runtime_dependency 'rest-client'
end
