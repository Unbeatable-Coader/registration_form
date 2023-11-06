Rails.application.routes.draw do

  # resources :employees, only: [:index]
  get '/', to:'employee#new'
  post '/employee', to:'employee#create'
  get '/show', to:'employee#show'
  get '/login', to:'employee#login'
  
end
