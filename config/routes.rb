Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root to: 'all#browse'

  namespace :api do
    namespace :v1 do

      get '/me', to: 'users#me'
      resources :users
      post '/login', to: 'auth#create'
    	
      resources :transactions
      resources :posts

    end
  end

end
