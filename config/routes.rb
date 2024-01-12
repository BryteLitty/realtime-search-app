# config/routes.rb
Rails.application.routes.draw do
  # ... other routes ...
  root 'search#index'

  get '/search', to: 'search#index', as: 'search_index'
  post '/search', to: 'search#create', as: 'search_create'

  # ... other routes ...
end
