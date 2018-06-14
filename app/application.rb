class Application
  
  @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item = @@items
      resp.write "#{item.name}, #{item.price}"
    elsif
      resp.status = 400
      resp.write "Item not found"
    else
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end
  
end