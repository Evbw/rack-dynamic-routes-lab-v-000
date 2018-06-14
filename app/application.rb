class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path == "#{Item.name}"
      do the thing
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
  
end