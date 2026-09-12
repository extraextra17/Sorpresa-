require 'webrick'

# Servidor básico configurado para la red local
server = WEBrick::HTTPServer.new(
  BindAddress: '0.0.0.0',
  Port: 8000,
  DocumentRoot: Dir.pwd
)

trap('INT') { server.shutdown }

puts "Servidor corriendo. Accede desde otro dispositivo en tu red usando tu IP local seguida de :8000"
server.start