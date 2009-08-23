rule '.beam' => '.erl' do |task|
  sh "erlc -I ../../lib/Erlang #{task.source}"
end
