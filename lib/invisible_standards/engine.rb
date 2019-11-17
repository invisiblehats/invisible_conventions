# frozen_string_literal: true

require 'github_changelog_generator/task'

class InvisibleStandards::Engine < ::Rails::Engine
  rake_tasks do
    # These will be moved into a different repo soon
    namespace :invisible_toolkit do
      namespace :changelog do
        desc 'Create a new changelog based on the current version'
        GitHubChangelogGenerator::RakeTask.new :generate do |config|
          user, project = ENV['CHANGELOG_REPO'].split('/')

          config.user = user
          config.project = project
          config.future_release = ENV['CHANGELOG_VERSION']
          config.token = ENV['CHANGELOG_TOKEN'] || ENV['GITHUB_TOKEN']
        end
      end
    end
  end
end
