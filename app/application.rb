class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      do the thing
    else
      resp.write ""
    end
  end
  
end