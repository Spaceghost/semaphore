# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semaphore/version'

Gem::Specification.new do |gem|
  gem.name          = "semaphore"
  gem.version       = Semaphore::VERSION
  gem.authors       = ["Johnneylee Jack Rollins"]
  gem.email         = ["Johnneylee.Rollins@gmail.com"]
  gem.description   = %q{A proper Singleton gem for Ruby.}
  gem.summary       = %q{Ruby's stdlib Singleton library barely satisfies the definition of singletons. This gem does it a lot better.}
  gem.homepage      = "https://github.com/Spaceghost/semaphore.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec', '~> 2.11.0'
end
