def test_executable
  "erl -noshell -s problem#{problem_number}_tests test -s init stop"
end

def main_executable
  "erl -noshell -s problem#{problem_number}_main main"
end

def compilation_targets
  ["problem#{problem_number}.beam",
   "problem#{problem_number}_main.beam",
   "problem#{problem_number}_tests.beam"]
end

SRC = FileList['*.erl']
CLEAN.include('*.beam', '*.dump')
