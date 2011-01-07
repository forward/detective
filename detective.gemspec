# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{detective}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Nesbitt"]
  s.date = %q{2011-01-07}
  s.description = %q{All in one hoptoad, newrelic and tripwire notifcations for rails apps}
  s.email = %q{andrewnez@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "VERSION",
    "app/controllers/monitoring_controller.rb",
    "config/routes.rb",
    "lib/detective.rb",
    "lib/detective/engine.rb",
    "lib/generators/detective/detective_generator.rb",
    "lib/generators/detective/templates/config.rb"
  ]
  s.homepage = %q{http://github.com/forward/detective}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Keeps an eye on your app}
  s.test_files = [
    "test/helper.rb",
    "test/test_detective.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<hoptoad_notifier>, ["~> 2.4.0"])
      s.add_runtime_dependency(%q<newrelic_rpm>, ["~> 2.13.4"])
      s.add_runtime_dependency(%q<tripwire_notifier>, ["~> 0.2.3"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<hoptoad_notifier>, ["~> 2.4.0"])
      s.add_runtime_dependency(%q<newrelic_rpm>, ["~> 2.13.4"])
      s.add_runtime_dependency(%q<tripwire_notifier>, ["~> 0.2.3"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<detective>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<hoptoad_notifier>, ["~> 2.4.0"])
      s.add_dependency(%q<newrelic_rpm>, ["~> 2.13.4"])
      s.add_dependency(%q<tripwire_notifier>, ["~> 0.2.3"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<hoptoad_notifier>, ["~> 2.4.0"])
      s.add_dependency(%q<newrelic_rpm>, ["~> 2.13.4"])
      s.add_dependency(%q<tripwire_notifier>, ["~> 0.2.3"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<detective>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<hoptoad_notifier>, ["~> 2.4.0"])
    s.add_dependency(%q<newrelic_rpm>, ["~> 2.13.4"])
    s.add_dependency(%q<tripwire_notifier>, ["~> 0.2.3"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<hoptoad_notifier>, ["~> 2.4.0"])
    s.add_dependency(%q<newrelic_rpm>, ["~> 2.13.4"])
    s.add_dependency(%q<tripwire_notifier>, ["~> 0.2.3"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

