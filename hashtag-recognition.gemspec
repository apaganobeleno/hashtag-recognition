# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "hashtag-recognition"
  spec.version       = HashtagRecognition::VERSION
  spec.authors       = ["Antonio Pagano"]
  spec.email         = ["ap@wawand.co"]
  spec.summary       = %q{ Simple Hashtag recognition for strings}
  spec.description   = %q{ Simple Hashtag recognition for strings }
  spec.homepage      = "https://github.com/apaganobeleno/hashtag-recognition"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "codeclimate-test-reporter", '~> 0'
end
