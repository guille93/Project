Rails.application.routes.draw do
  get '/' => "decisions#home"
  get '/decisions' => "decisions#index", as: 'root'
  resources :decisions
  get '/decision/:id/vote_1' => 'decisions#vote1', as: 'vote'
  get '/decision/:id/vote_2' => 'decisions#vote2', as: 'vote2'
  get 'signup'  => 'users#new' 
  resources :users
  get 'login'=> 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
