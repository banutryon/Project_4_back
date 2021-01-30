Rails.application.routes.draw do
  get '/locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'
  post '/locations', to: 'locations#create'
  delete '/locations/:id', to: 'locations#delete'
  put '/locations/:id', to: 'locations#update'

  get '/sellers', to: 'sellers#index'
  get '/sellers/:id', to: 'sellers#show'
  post '/sellers', to: 'sellers#create'
  delete '/sellers/:id', to: 'sellers#delete'
  put '/sellers/:id', to: 'sellers#update'
end
