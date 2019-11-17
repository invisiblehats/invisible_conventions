# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'invisible_standards/project_meta'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = InvisibleStandards::NAME
  spec.version = InvisibleStandards::VERSION
  spec.authors = InvisibleStandards::AUTHORS
  spec.email = InvisibleStandards::EMAIL
  spec.homepage = InvisibleStandards::HOMEPAGE
  spec.summary = InvisibleStandards::SUMMARY
  spec.description = InvisibleStandards::DESCRIPTION
  spec.license = InvisibleStandards::LICENSE

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'ihv-rubocop.yml',
    'README.md'
  ]

  spec.add_development_dependency 'rake', '>= 12'
  spec.add_dependency 'github_changelog_generator', '~> 1.15.0'
  spec.add_dependency 'rails', '>= 4.2'
  spec.add_dependency 'rubocop', '>= 0.70'
end
