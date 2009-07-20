rule '.beam' => '.erl' do |task|
  sh "erlc #{task.source}"
end
