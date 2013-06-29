require "socket"

webserver = TCPServer.new('localhost', 12380)
puts "Running"
while (session = webserver.accept)
        session.write(Time.now)
        session.print("\nHello World")
        session.close
end
