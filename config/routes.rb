Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root to: 'all#browse'

  namespace :api do
    namespace :v1 do

    	resources :users
      post '/login', to: 'auth#create'
    	
      resources :offer_users
    	resources :offers 
    	resources :requests
    	resources :request_users

    end
  end

end
