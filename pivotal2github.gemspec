# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pivotal2github/version'

Gem::Specification.new do |spec|
  spec.name          = 'pivotal2github'
  spec.version       = Pivotal2github::VERSION
  spec.authors       = ['Julien Letessier']
  spec.email         = ['julien.letessier@gmail.com']

  spec.summary       = %q{Import Pivotal Tracker stories into Github Issues}
  spec.homepage      = 'https://github.com/mezis/pivotal2github'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'

  spec.add_runtime_dependency 'tracker_api'
  spec.add_runtime_dependency 'octokit'
  spec.add_runtime_dependency 'net-http-persistent'
end
