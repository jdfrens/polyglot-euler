require 'find'
require 'erb'

desc "Creates a new folder for a new project"
task :create, :number do |task, args|
  Find.find("./template/") do |path|
    dest = path.gsub("DDD", args.number).gsub("template", args.number)
    if FileTest.directory?(path)
      if path =~ /\.svn/
        Find.prune
      else
        Dir.mkdir("#{dest}")
        next
      end
    elsif path =~ /\.erb$/
      process_erb(path, dest, args.number)
    else
      File.open("#{dest}", "w") do |file|
        file.write(File.read(path).gsub("DDD", args.number))
      end
    end
  end
end

def process_erb(path, dest, number)
  target = ENV['target']
  function = ENV['function']
  assertions = eval(ENV['assertions'])
  File.open("#{dest}".gsub(".erb", ""), "w") do |file|
    file.write(ERB.new(File.read(path), nil, "%<>").result(binding))
  end
end

desc "Displays version numbers of stuff"
task :versions do
  sh "port installed erlang"
  sh "ghc --version"
  sh "swipl --version"
  sh "python --version"
  sh "ruby -v"
end
