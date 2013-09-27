# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hiphat_handler"

Gem::Specification.new do |s|
  s.name        = "hipchat_handler"
  s.version     = HipchatHandler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Scott"]
  s.email       = ["brainscott@gmail.com"]
  s.homepage    = "https://github.com/bscott/hipchat_handler"
  s.summary     = %q{Chef handler for sending exceptions & updated resources to Hipchat}
  s.description = %q{Chef handler for sending exceptions & updated resources to Hipchat}

  s.rubyforge_project = "hipchat_handler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("chef", ">= 0.9.0")
  s.add_dependency("hipchat")

  s.add_development_dependency("mocha")
end
