class HelloWorldApp
  def self.call(env)
    request = Rack::Request.new(env)
    message = request.params['message'] || 'nothing!'

    response = Rack::Response.new
    response.write("Hello World, you said #{message}")
    response.status = 202
    response.finish
  end
end
