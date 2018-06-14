class Application
  
  @@items = Item.new
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      resp.write "#{item.name}, #{item.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
  
end