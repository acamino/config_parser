# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'config_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "config_parser"
  spec.version       = ConfigParser::VERSION
  spec.authors       = ["Agustin Camino"]
  spec.email         = ["agustin.camino@gmail.com"]

  spec.summary       = "Minimalistic config parser"
  spec.homepage      = "https://bitbucket.org/acamino/config_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop", "~> 0.49"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4.8"
end
