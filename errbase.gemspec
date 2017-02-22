# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "errbase/version"

Gem::Specification.new do |spec|
  spec.name          = "errbase"
  spec.version       = Errbase::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]
  spec.summary       = "Common exception reporting for a variety of services"
  spec.description   = "Common exception reporting for a variety of services"
  spec.homepage      = "https://github.com/ankane/errbase"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", ">= 5"

  spec.add_development_dependency "rollbar"
  spec.add_development_dependency "airbrake"
  spec.add_development_dependency "honeybadger"
  spec.add_development_dependency "exceptional"
  spec.add_development_dependency "raygun4ruby"
  spec.add_development_dependency "sentry-raven"
  spec.add_development_dependency "bugsnag"
  spec.add_development_dependency "appsignal"
  spec.add_development_dependency "opbeat"
  spec.add_development_dependency "exception_notification"
end
