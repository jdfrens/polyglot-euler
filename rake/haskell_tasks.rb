[test_executable, main_executable].each do |executable|
  file executable => ["#{executable}.hs", "Problem#{problem_number}.hs"] do
    sh "ghc --make #{executable}"
  end
end
