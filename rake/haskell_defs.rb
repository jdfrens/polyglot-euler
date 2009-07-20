def test_executable
  "Problem#{problem_number}Test"
end

def main_executable
  "Problem#{problem_number}Main"
end

SRC = FileList['*.hs']
CLEAN.include('*.hi', '*.o')
CLOBBER.include(test_executable, main_executable)
