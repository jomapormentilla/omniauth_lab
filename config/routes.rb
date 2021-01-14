Rails.application.routes.draw do
  # Add your routes here
  match '/auth/:provider/callback' => 'sessions#create', via: [:get, :post]
  root 'welcome#home'
  get '/logout' => 'sessions#destroy', as: 'logout'
end
