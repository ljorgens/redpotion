# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "project/version"

Gem::Specification.new do |spec|
  spec.name          = "redpotion"
  spec.authors       = ["Infinite Red"]
  spec.email         = ["hello@infinite.red"]
  spec.description   = %q{RedPotion - The best combination of RubyMotion tools and libraries}
  spec.summary       = %q{RedPotion combines RMQ, ProMotion, CDQ, AFMotion, and more for the perfect mix to develop in RubyMotion fast}
  spec.homepage      = "http://redpotion.org"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  files.concat(Dir.glob('templates/**/*.rb'))
  spec.files = files

  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.version       = RedPotion::VERSION

  spec.executables << 'potion'

  spec.add_runtime_dependency "ruby_motion_query", ">= 1.7.0"
  spec.add_runtime_dependency "bigdecimal"
  spec.add_runtime_dependency "ProMotion", ">= 2.7.1"
  spec.add_runtime_dependency "motion_print"
  spec.add_runtime_dependency "motion-cocoapods"
  spec.add_runtime_dependency "RedAlert"
  spec.add_runtime_dependency "rake"
  spec.add_development_dependency "webstub"
end
