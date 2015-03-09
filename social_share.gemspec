# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'social_share/version'

Gem::Specification.new do |spec|
  spec.name          = 'social_share'
  spec.version       = SocialShare::VERSION
  spec.authors       = ['ldewald']
  spec.email         = ['laurardewald@gmail.com']
  spec.summary       = %q{Easy helper methods for adding custom social share buttons to your Rails app.}
  spec.homepage      = 'https://github.com/ldewald/social_share'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
