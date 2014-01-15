# -*- encoding: utf-8 -*-

require File.expand_path('../lib/ruby_version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ruby_version"
  gem.version       = RubyVersion::VERSION
  gem.summary       = 'Adds the RubyVersion pseudo-constant.'
  gem.description   = 'Provides a RubyVersion class to simplify checking for the right Ruby version in your programs.'
  gem.license       = "MIT"
  gem.authors       = ["Jan Lelis"]
  gem.email         = "mail@janlelis.de"
  gem.homepage      = "https://github.com/janlelis/ruby_version"

  gem.files         = Dir['{**/}{.*,*}'].select { |path| File.file?(path) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 10.1'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
