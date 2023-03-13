namespace :v1 do
  devise_scope :user do
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
  end

  resource :users do
  end
end