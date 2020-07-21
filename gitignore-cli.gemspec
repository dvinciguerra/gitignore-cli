# frozen_string_literal: true

require_relative 'lib/gitignore/version'

Gem::Specification.new do |spec|
  spec.name          = 'gitignore-cli'
  spec.version       = Gitignore::VERSION
  spec.authors       = ['Daniel Vinciguerra']
  spec.email         = ['daniel.vinciguerra@bivee.com.br']

  spec.summary       = 'Simple Ruby CLI to generate .gitignore files'
  spec.description   = 'A Ruby CLI tool that use fantastic gitignore.io to generate .gitignore files to your projects'
  spec.homepage      = 'https://github.com/dvinciguerra/gitignore-cli'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/dvinciguerra/gitignore-cli'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'http', '~> 4.3', '>= 4.3.0'
  spec.add_runtime_dependency 'thor', '~> 1.0', '>= 1.0.1'
  spec.add_runtime_dependency 'tty-prompt', '>= 0.20', '< 0.23'
end
