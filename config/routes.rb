Rails.application.routes.draw do
  root 'static_pages#home', as: 'root'

  resources :gossips do
  	resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
