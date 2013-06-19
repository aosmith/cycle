# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cycle/version'

Gem::Specification.new do |spec|
  spec.name          = "cycle"
  spec.version       = Cycle::VERSION
  spec.authors       = ["Alex Smith"]
  spec.email         = ["aosmith@gmail.com"]
  spec.description   = %q{A simple background queue}
  spec.summary       = %q{}
  spec.homepage      = "http://alexsmith.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
