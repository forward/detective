# -*- encoding: utf-8 -*-
require File.expand_path('../lib/detective/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Nesbitt"]
  gem.email         = ["andrewnez@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ''

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "detective"
  gem.require_paths = ['lib']
  gem.version       = Detective::VERSION

  s.add_runtime_dependency(%q<rails>, ["~> 3.0.8"])
  s.add_runtime_dependency(%q<hoptoad_notifier>, ["~> 2.4.11"])
  s.add_runtime_dependency(%q<newrelic_rpm>, ["~> 3.1.0"])
  s.add_runtime_dependency(%q<tripwire_notifier>, ["~> 0.2.10"])
end
