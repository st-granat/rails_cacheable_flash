# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cacheable_flash/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrey"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Кэшируемый флеш"
  gem.summary       = "Суммари"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cacheable_flash"
  gem.require_paths = ["lib"]
  gem.version       = CacheableFlash::VERSION
end
