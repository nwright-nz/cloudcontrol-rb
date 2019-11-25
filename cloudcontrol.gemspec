# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cloudcontrol/version"

Gem::Specification.new do |s|
  s.name        = "cloudcontrol_sdk"
  s.version     = CloudControl::VERSION
  s.authors     = ["Nigel Wright"]
  s.email       = ["nigel.wright@global.ntt"]
  s.licenses 	= ['MIT']
  s.homepage    = ""
  s.summary     = %q{NTT Cloud Control REST API client gem}
  s.description = %q{SDK to access NTT Cloud Control api'}

  s.rubyforge_project = "cloudcontrol"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'i18n'
  s.add_dependency 'activesupport'
  s.add_dependency 'typhoeus'
  s.add_dependency 'xml-simple'
  s.add_dependency 'hashie'
  s.add_dependency 'colorize'
end
