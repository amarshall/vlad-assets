# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vlad/assets/version'

Gem::Specification.new do |gem|
  gem.name          = 'vlad-assets'
  gem.version       = Vlad::Assets::VERSION
  gem.authors       = ['Andrew Marshall']
  gem.email         = ['andrew@johnandrewmarshall.com']
  gem.description   = %q{Vlad tasks for the Rails asset pipline}
  gem.summary       = %q{Vlad tasks for the Rails asset pipline}
  gem.homepage      = 'http://johnandrewmarshall.com/vlad-assets'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
