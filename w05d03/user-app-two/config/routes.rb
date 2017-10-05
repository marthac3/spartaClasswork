Rails.application.routes.draw do
  resources :users do
  	resources :posts
  end
  devise_for :users, path: "u"
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
