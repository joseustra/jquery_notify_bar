# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery_notify_bar/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jose Carlos Ustra Junior"]
  gem.email         = ["ustrajunior@gmail.com"]
  gem.description   = "A simple gem to include jquery.notifyBar to your rails app."
  gem.summary       = "jquery.notifyBar in your app"
  gem.homepage      = "http://ustrajunior.com/apps/jquery_notify_bar"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery_notify_bar"
  gem.require_paths = ["lib"]
  gem.version       = JqueryNotifyBar::VERSION
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.8.0'
  gem.add_development_dependency 'jasmine', '>= 1.1.1'
end
