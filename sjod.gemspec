# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sjod/version'

Gem::Specification.new do |spec|
  spec.name          = "sjod"
  spec.version       = SJOD::VERSION
  spec.authors       = ["howdoicomputer"]
  spec.email         = ["tyler@insidevault.com"]
  spec.summary       = %q{An API wrapper for the San Jose open data initiative.}
  spec.description   = %q{Not endorsed by the city of San Jose.}
  spec.homepage      = "https://github.com/howdoicomputer/sjod"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
