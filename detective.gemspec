# -*- encoding: utf-8 -*-
require File.expand_path('../lib/detective/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Nesbitt"]
  gem.email         = ["andrewnez@gmail.com"]
  gem.summary       = %q{Keep an eye on your app}

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "detective"
  gem.require_paths = ['lib']
  gem.version       = Detective::VERSION

  gem.add_dependency(%q<rails>, ["~> 3.0.8"])
  gem.add_dependency(%q<hoptoad_notifier>, ["~> 2.4.11"])
  gem.add_dependency(%q<newrelic_rpm>, ["~> 3.1.0"])
  gem.add_dependency(%q<tripwire_notifier>, ["~> 0.2.10"])
end
