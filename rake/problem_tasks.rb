require 'pathname'

LANGUAGE_DIRECTORIES = ["Erlang", "Haskell", "Prolog", "Python", "Ruby", "Clojure"].map { |dir| Pathname.new(dir) }

def dirs
  LANGUAGE_DIRECTORIES.select(&:directory?)
end

def puts_boxed(message)
  puts "*" * message.length
  puts message
  puts "*" * message.length
end

task :default do
  rake_in_dirs "default"
end

task :test do
  failures = []
  dirs.each do |dir|
    sh "cd #{dir} ; rake test" do |ok, result|
      if ! ok
        failures = failures + [dir]
      end
    end
  end
  if failures.empty?
    puts_boxed "All tests for all languages (#{dirs.join(", ")}) passed!"
  else
    puts_boxed "Test failures: #{failures.join(', ')}"
    fail "Test failures."
  end
end

task :sample do
  rake_in_dirs "sample"
end

task :timed_sample do
  rake_in_dirs "timed_sample"
end

task :clean do
  rake_in_dirs "clean"
end

task :clobber do
  rake_in_dirs "clobber"
end

def rake_in_dirs(task)
  dirs.each do |dir|
    sh "cd #{dir} ; rake #{task}"
  end
end
