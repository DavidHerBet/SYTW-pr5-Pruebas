task :default => :rps

desc "Ejecutar rps en el servidor"
task :rps do
  sh "rackup"
end

desc "Ejecutar el cliente con piedra"
task :rock do
  sh "curl -v 'http://localhost:9292?choice=rock'"
end

desc "Ejecutar el cliente con papel"
task :paper do
  sh "curl -v 'http://localhost:9292?choice=paper'"
end

desc "Ejecutar el cliente con tijeras"
task :scissors do
  sh "curl -v 'http://localhost:9292?choice=scissors'"
end
