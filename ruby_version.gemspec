# -*- encoding: utf-8 -*-

require File.expand_path('../lib/ruby_version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ruby_version"
  gem.version       = RubyVersion::VERSION
  gem.summary       = 'Adds the RubyVersion pseudo-constant.'
  gem.description   = 'Provides a RubyVersion class which offers a convenient DSL for checking for the right Ruby version'
  gem.license       = "MIT"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/ruby_version"

  gem.files         = Dir['{**/}{.*,*}'].select { |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.add_development_dependency 'rake', '>= 12.0'
  gem.add_development_dependency 'rspec', '~> 2.99'
end
