require 'find'
require 'erb'

desc "Displays version numbers of stuff"
task :versions do
  sh "port installed erlang"
  sh "ghc --version"
  sh "swipl --version"
  sh "python --version"
  sh "ruby -v"
end

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
  settings = ProjectTemplate.new(number)
  File.open("#{dest}".gsub(".erb", ""), "w") do |file|
    file.write(
      ERB.new(File.read(path), nil, "%<>").result(settings.get_binding)
      )
  end
end

class ProjectTemplate
  def initialize(number)
    @number = number
    @settings = YAML.load_file("#{number}.yml")      
  end
  
  def get_binding
    binding
  end
  
  def number
    @number
  end
  
  def problem_function
    @settings["problem"]["function"]
  end

  def problem_value
    @settings["problem"]["value"]
  end
  
  def tests(function)
    @settings["functions"][function]["tests"].map do |key, value|
      [value["expected"], value["value"]]
    end.sort { |a, b| a[1] <=> b[1] }
  end
  
  def functions
    @settings["functions"].keys
  end
end
