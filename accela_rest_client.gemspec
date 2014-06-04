# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'accela_rest_client/version'

Gem::Specification.new do |spec|
  spec.name          = "accela_rest_client"
  spec.version       = AccelaRestClient::VERSION
  spec.authors       = ["axtheset"]
  spec.email         = ["sethaxthelm@gmail.com"]
  spec.summary       = "Need to do this"
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.5"
  spec.add_dependency "rake"
  spec.add_dependency "httparty"
  spec.add_development_dependency 'rspec-core'
  spec.add_development_dependency 'rspec-expectations'
  spec.add_development_dependency 'rspec-mocks'
  spec.add_dependency 'addressable'
  spec.add_dependency 'json'

end
