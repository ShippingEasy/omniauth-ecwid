# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-ecwid/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["ShippingEasy"]
  gem.email         = ["chirs@shippingeasy.com"]
  gem.description   = %q{Ecwid OAuth2 strategy for OmniAuth}
  gem.summary       = %q{Ecwid OAuth2 strategy for OmniAuth}
  gem.homepage      = "https://github.com/ShippingEasy/omniauth-ecwid"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-ecwid"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Ecwid::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.5'
  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
end
