require 'rack'

my_server = Proc.new do 
    [200, { ' Content-Type ' => 'text/html' }, ["Hello, World! This is the first local server from KryptoniteZone!"]]
end

run my_server 