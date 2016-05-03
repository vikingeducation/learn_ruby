# This Rakefile has all the right settings to run the tests inside each lab

require 'rspec/core/rake_task'

task :default => :spec

desc "run tests for this lab"
RSpec::Core::RakeTask.new do |task|
  lab = Rake.application.original_dir
  task.pattern = "#{lab}/*_spec.rb"
  task.rspec_opts = [ "-I#{lab}", "-I#{lab}/solution", '-f documentation', '-r ./rspec_config']
  task.verbose = false
end


task :all do
  [
    '00_hello',
    '01_temperature',
    '02_calculator',
    '03_simon_says',
    '04_pig_latin',
    '05_silly_blocks',
    '06_performance_monitor',
    '07_hello_friend',
    '08_book_titles',
    '09_timer',
    '10_temperature_object',
    '11_dictionary',
    '12_rpn_calculator',
    '13_xml_document',
    '14_array_extensions',
    '15_in_words'
  ].each do |dir_name|
    Dir.chdir(dir_name)
    system('rake')
    Dir.chdir('..')
  end
end
