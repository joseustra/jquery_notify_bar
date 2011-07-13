# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery_notify_bar/version"

Gem::Specification.new do |s|
  s.name        = "jquery_notify_bar"
  s.version     = JqueryNotifyBar::VERSION
  s.authors     = ["Jose Carlos Ustra Junior"]
  s.email       = ["contato@ustrajunior.com"]
  s.homepage    = "http://ustrajunior.com/apps/jquery_notify_bar"
  s.summary     = %q{jquery.notifyBar in your app}
  s.description = %q{A simple gem to include jquery.notifyBar to your rails app.}

  s.rubyforge_project = "jquery_notify_bar"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
