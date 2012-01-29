module Route
  @@http_methods = [:get, :post, :put, :delete]
  
  def route(method_sym, *args)
    resource_name = self.name.sub("Controller","").underscore.to_sym # can this assumption even really be made? surely there's a better way
    Rails.application.routes.draw do
      if @@http_methods.include? method_sym
        # this part results in something really ugly: duplicate unnamed routes 
        # for each call to get/put/delete/post so rake routes becomes cluttered
        resources resource_name do 
          method(method_sym).call(*args)
        end  
      else
        method(method_sym).call(*args)
      end
    end
  end
end