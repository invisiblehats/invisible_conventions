# frozen_string_literal: true

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'InvisibleStandards'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'bundler/gem_tasks'

require 'github_changelog_generator/task'
require_relative 'lib/invisible_standards/project_meta'

namespace :invisible_toolkit do
  namespace :changelog do
    desc 'Create a new changelog based on the current version'
    GitHubChangelogGenerator::RakeTask.new :generate do |config|
      user, project = InvisibleStandards::REPO.split('/')

      config.user = user
      config.project = project
      config.future_release = InvisibleStandards::VERSION
      config.token = ENV['CHANGELOG_TOKEN'] || ENV['GITHUB_TOKEN']
    end
  end
end

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task default: :test
