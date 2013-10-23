task :default => :rps

desc "Ejecutar rps en el servidor"
task :rps do
  sh "rackup"
end

desc "Ejecutar los tests unitarios"
task :test do
  sh "ruby test/test_rps.rb"
end
