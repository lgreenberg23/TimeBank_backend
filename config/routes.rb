Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root to: 'all#browse'

  namespace :api do
    namespace :v1 do

      get '/me', to: 'users#me'
      resources :users
      post '/users/hours/:id', to: 'users#updateHours'
     
      post '/login', to: 'auth#create'
    	
      get '/transactions/:user_id', to: 'transactions#userTransactions'
      post '/transactions/modify/:id', to: 'transactions#changeStatus'
      resources :transactions
      resources :posts

    end
  end

end
