# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_cacheable_flash/version', __FILE__)

Gem::Specification.new do |gem|
  gem.license       = "MIT"
  gem.authors       = ["Andrey"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Кэшируемый флеш"
  gem.summary       = "Суммари"
  gem.homepage      = "https://github.com/st-granat/rails_cacheable_flash"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rails_cacheable_flash"
  gem.require_paths = ["lib"]
  gem.version       = RailsCacheableFlash::VERSION
end
