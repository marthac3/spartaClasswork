Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static#home"

  get "/hello/:name", to: "static#hello"

  get "/contact", to: "static#contact"
end
