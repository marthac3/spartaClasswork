Rails.application.routes.draw do

  resources :albums do
  	resources :songs
  end
  
  root "albums#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
