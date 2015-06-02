Rails.application.routes.draw do
  get "/" => "decisions#index"
  resources :decisions do
  resources :products
    end
end
