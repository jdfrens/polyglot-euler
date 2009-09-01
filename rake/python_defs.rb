def test_executable
  "Problem#{problem_number}Tests.py"
end

def main_executable
  "Problem#{problem_number}Main.py"
end

def chmod_test
  File.chmod(0700, test_executable)
end

def chmod_main
  File.chmod(0700, main_executable)
end

SRC = FileList['*.py']

CLEAN.include('*.pyc')
ENV['PYTHONPATH'] = ".:../../lib/Python"