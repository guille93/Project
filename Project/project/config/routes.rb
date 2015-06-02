Rails.application.routes.draw do
  get "/" => "decisions#index"
  resources :decisions do
  resources :products
    end
    get 'signup'  => 'users#new' 
	resources :users
	get '/login'=> 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
end
