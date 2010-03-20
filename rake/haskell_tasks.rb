[test_executable, main_executable].each do |executable|
  file executable => ["#{executable}.hs", "Problem#{problem_number}.hs"] do
    sh "ghc --make -i../../lib/Haskell #{executable}"
  end
end

task :ghci do
  sh "ghci -i../../lib/Haskell"
end
