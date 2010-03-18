require 'pathname'
  
def dirs
  ["Erlang", "Haskell", "Prolog", "Python", "Ruby"].select do |dir|
    Pathname.new(dir).directory?
  end
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
    puts "***********************"
    puts "All tests for all languages (#{dirs.join(", ")}) passed!"
    puts "***********************"
  else
    puts "***********************"
    puts "Test failures: #{failures.join(', ')}"
    puts "***********************"
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
