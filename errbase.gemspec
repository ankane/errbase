require_relative "lib/errbase/version"

Gem::Specification.new do |spec|
  spec.name          = "errbase"
  spec.version       = Errbase::VERSION
  spec.summary       = "Common exception reporting for a variety of services"
  spec.homepage      = "https://github.com/ankane/errbase"
  spec.license       = "MIT"

  spec.author        = "Andrew Kane"
  spec.email         = "andrew@chartkick.com"

  spec.files         = Dir["*.{md,txt}", "{lib}/**/*"]
  spec.require_path  = "lib"

  spec.required_ruby_version = ">= 2.4"
end
