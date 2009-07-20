def test_executable
  "problem#{problem_number}.plt"
end

def main_executable
  "problem#{problem_number}main.pl"
end

def chmod_test
  File.chmod(0700, test_executable)
end

def chmod_main
  File.chmod(0700, main_executable)
end

SRC = FileList['*.pl', '*.plt']
