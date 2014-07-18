Rails.application.routes.draw do
  get '/' => 'home#index'
  
  #jobs
  get '/jobs' => 'jobs#index'
  post '/jobs' => 'jobs#create'
  
  get '/jobs/new' => 'jobs#new'

  get '/jobs/preview/:id' => 'jobs#preview'

  get '/jobs/:id' => 'jobs#show'

  patch '/jobs/publish/:id' => 'jobs#update'
  

  
  


  # To find all the routes
  #resources :jobs

  #contact
  get '/contact' => 'contact#index'

  #terms
  get '/legal' => 'legal#terms'


  resources :jobs do
    get :avatar, on: :member
  end

  get '/uploads/job/avatar/:id/:filename' => 'gridfs#avatar'
  
end
