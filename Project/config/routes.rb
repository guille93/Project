Rails.application.routes.draw do
  get '/' => "decisions#index", as: 'root'
  get '/category/:category' => "decisions#index_by_category", as: 'category'
  get '/home' => "decisions#home", as: 'home'
  
  get '/decision/:id/vote_1' => 'decisions#vote1', as: 'vote'
  get '/decision/:id/vote_2' => 'decisions#vote2', as: 'vote2'
  get 'signup'  => 'users#new' 
  
  resources :users do
    resources :decisions
  end

  get 'login'=> 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
