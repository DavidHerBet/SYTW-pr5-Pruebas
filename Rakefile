task :default => :rps

desc "Ejecutar rps en el servidor"
task :rps do
  sh "rackup"
end

desc "Ejecutar los test de TDD con rspec"
task :rspec do
  sh "rspec spec/rsack/server_spec.rb"
end
