def problem_number
  Dir.pwd.split(/\//)[-2]
end

def compilation_targets
  [test_executable, main_executable]
end

def chmod_test
end

def chmod_main
end
