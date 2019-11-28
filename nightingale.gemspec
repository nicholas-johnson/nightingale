lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nightingale/version'

Gem::Specification.new do |spec|
  spec.name          = 'nightingale'
  spec.version       = Nightingale::VERSION
  spec.authors       = ['Nicholas Johnson']
  spec.email         = ['me@nicholasjohnson.com']

  spec.summary       = 'Tech test for Nicholas Johnson'
  spec.description   = 'Log file parser'
  spec.homepage      = 'http://nicholasjohnson.com'

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir['{lib,bin,test}/**/**'].reject { |f| f.end_with?('.gif') }
  spec.executables << 'nightingale'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
