Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resource :users, only: [:create]
    post "/login", to: "users#login"
    get "/auto_login", to: "users#auto_login"
  end
end
