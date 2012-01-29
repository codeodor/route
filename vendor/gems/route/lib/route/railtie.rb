module Route
  class Railtie < Rails::Railtie
    initializer "route.include_route_with_controllers" do |app|
      ActionController::Base.extend(Route)
    end
      
    initializer "route.config_routes_to_check_controllers" do |app|
      app.config.paths["config/routes"].concat Dir[Rails.root.join("app/controllers/*.rb")]
      app.config.paths["config/routes"].each do |path|
        app.routes_reloader.paths << path unless app.routes_reloader.paths.include? path
      end
    end  
  end  
end