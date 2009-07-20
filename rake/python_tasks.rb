[test_executable, main_executable].each do |executable|
  file executable do
    sh "chmod 700 #{executable}"
  end
end
