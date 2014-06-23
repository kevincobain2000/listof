# coding: utf-8
require File.expand_path('../lib/listof/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "listof"
  spec.version       = Listof::VERSION
  spec.authors       = ["Pulkit Kathuria"]
  spec.email         = ["kevincobain2000@gmail.com"]
  spec.description   = %q{List me up}
  spec.summary       = %q{List of anything countries, cities, food, allergies, shops}
  spec.homepage      = "http://listof.herokuapp.com/api/dog_names_male"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "json"
  spec.add_development_dependency "yaml"
end
