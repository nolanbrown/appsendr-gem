# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appsendr/version'

Gem::Specification.new do |gem|
  gem.name          = "appsendr"
  gem.version       = Appsendr::VERSION
  gem.authors       = ["Nolan Brown"]
  gem.email         = ["contact@appsendr.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = gem.description
  gem.homepage      = "https://appsendr.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'rest-client'
  
end
