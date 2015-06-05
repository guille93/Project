Rails.application.routes.draw do
  
  get "/" => "decisions#index", as: 'root'
  resources :decisions do
  	resources :products
  end
  
  get '/products/:id/vote' => 'decisions#vote', as: 'vote'
	get 'signup'  => 'users#new' 
	resources :users
	get 'login'=> 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

end
