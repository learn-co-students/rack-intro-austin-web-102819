require 'rack'

#something that responds to call. that's what Rack Demands

class MyServer
    def call(env)
        return [200, {'Content-type' => 'text/html'}, pretty_response]
    end 

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</>"] : ["<strong>Hello</strong."]
    end 
end 

run MyServer.new