Rails.application.routes.draw do
  get '/' => 'home#index'
  
  #jobs
  get '/jobs' => 'jobs#index'
  get '/jobs/:id' => 'jobs#show'
  
  #post
  get '/post' => 'post#index'
  post '/post' => 'post#create'

  get '/post/preview' => 'post#preview'
  post '/post/preview' => 'post#preview'


  #contact
  get '/contact' => 'contact#index'

  #terms
  get '/legal' => 'legal#terms'
end
