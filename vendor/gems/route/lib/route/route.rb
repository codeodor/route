module Route
  def route(method_sym, *args)
    Rails.application.routes.draw do
      method(method_sym).call(*args)
    end
  end
end