require 'find'

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
    else
      code = File.read(path)
      code = code.gsub("DDD", args.number)
      File.open("#{dest}", "w") do |file|
        file.write(code)
      end
    end
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