require './lib/rps'

use Rack::Static, :urls => ["/public"]

run RockPaperScissors::App.new

# Indica en que puerto y con que servidor se ejecuta la aplicación
puts "> Iniciando servidor Thin"
puts "> Aplicación RPS"
puts "> http://localhost:9292/"
