# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitmask_attributes/version'

Gem::Specification.new do |spec|
  spec.name          = "bitmask_attributes"
  spec.version       = "0.0.2"
  spec.authors       = ["Thiyagu"]
  spec.email         = ["thiyaram@gmail.com"]
  spec.description   = %q{bitmask}
  spec.summary       = %q{bitmask attributes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.add_development_dependency "rspec"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
