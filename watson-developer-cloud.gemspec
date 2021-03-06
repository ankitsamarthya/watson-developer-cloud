# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watson/version'

Gem::Specification.new do |spec|
  spec.name = 'watson-developer-cloud'
  spec.version = Watson::VERSION
  spec.authors = ['Ankit Samarthya']
  spec.email = ['ankitsamar@outlook.com']

  spec.summary = 'Ruby client library to use the Watson Developer Cloud ' \
    'services, a collection of APIs that use cognitive computing to solve ' \
    'complex problems.'
  spec.homepage = 'https://github.com/ankitsamarthya/watson-developer-cloud'
  spec.license = 'MIT'

  # To allow pushes either set the 'allowed_push_host'
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'httparty'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.0'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-coolline'
end
