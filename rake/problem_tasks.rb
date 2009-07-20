def dirs
  ["Erlang", "Haskell", "Prolog", "Python", "Ruby"]
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
  if ! failures.empty?
    raise "Test failures: #{failures.join(', ')}"
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
