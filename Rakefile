  require 'bundler/setup' 
  require 'padrino-core/cli/rake'


PADRINO_ENV  = ENV['PADRINO_ENV'] ||= ENV['RACK_ENV'] ||= 'test'  unless defined?(PADRINO_ENV)

PadrinoTasks.use(:database)
PadrinoTasks.use(:datamapper)
PadrinoTasks.init

puts "PADRINO_ENV: #{PADRINO_ENV}"
if ['development', 'test', 'travis'].include?(PADRINO_ENV)
  
  task :all do
  ["rake spec", "rake cucumber"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("RACK_ENV=test rake dm:auto:migrate")
    system("RACK_ENV=development rake dm:auto:migrate")
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
    end
  end

  task :travis do
  ["rake spec_report", "rake cucumber"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("RACK_ENV=travis rake dm:auto:migrate")
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
    end
  end

  task :db_migrate do
    puts "Starting to auto migrate test and development databases..."
    system("RACK_ENV=test rake dm:auto:migrate")
    system("RACK_ENV=development rake dm:auto:migrate")
  end

  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:cucumber) do |task|
    task.cucumber_opts = ["features", '-s']
  end

  # Cucumber::Rake::Task.new(:cucumber_report) do |task|
  #   Rake::Task['db:migrate'].invoke
  #   task.cucumber_opts = ['features', '--format html -o reports/cucumber.html']
  # end

  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = "./spec/**/*_spec.rb"
    # t.rspec_opts = %w(-fs --color)
    # t.rspec_opts = %w(--format=documentation --color)
  end

  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec_report) do |t|
    t.pattern = './spec/**/*_spec.rb'
    t.rspec_opts = %w(--format RspecJunitFormatter --out reports/spec/spec.xml)
  end

  task :default => [:all]

end