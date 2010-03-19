desc "Compiles everything and runs tests"
task :default => :test

desc "Runs the tests"
task :test => :compile do
  chmod_test
  sh test_executable
end

desc "Runs the main command-line program"
task :sample => :compile do
  chmod_main
  command_args.each do |args|
    sh "#{main_executable} #{args}"
  end
end

namespace :sample do
  desc "Times the main command-line program"
  task :timed => :compile do
    chmod_main
    command_args.each do |args|
      sh "time #{main_executable} #{args}"
    end
  end
end

desc "Compiles everything"
task :compile => compilation_targets
