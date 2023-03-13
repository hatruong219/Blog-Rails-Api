class ActionDispatch::Routing::Mapper
  def draw routes_name
    instance_eval File.read(Rails.root.join("config/routes/#{routes_name}.rb"))
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, format: :json do
    draw :api_v1
  end
end
