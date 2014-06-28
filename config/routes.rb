Rails.application.routes.draw do
  get '/' => 'home#index'
  
  get '/jobs' => 'jobs#index'
  get '/jobs/:id' => 'jobs#show'
  
  get '/post' => 'post#index'
  post '/post' => 'post#create'

  get '/contact' => 'contact#index'

  get '/legal' => 'legal#terms'
end
