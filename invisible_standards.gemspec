# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'invisible_standards/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'invisible_standards'
  spec.version     = InvisibleStandards::VERSION
  spec.authors     = ['Myk Klemme']
  spec.email       = ['mykklemme@gmail.com']
  spec.homepage    = ''
  spec.summary     = 'Summary of InvisibleStandards.'
  spec.description = 'Description of InvisibleStandards.'
  spec.license     = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md'
  ]

  spec.add_development_dependency 'rake'

  spec.add_dependency 'rubocop'
end
