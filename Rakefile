require 'bundler/gem_tasks'
require 'death'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

namespace :death do
  desc 'tuning of death voice, adjustable sound pressure using FACTOR=n argument (default 3) .'
  task :tuning do
    death_voice = Death::Voice.new(ENV['FACTOR'] ? ENV['FACTOR'].to_i : 3)

    death_voice.say('deeeeeeeeeeeattttth')
  end
end
