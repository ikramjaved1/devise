Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  root to: "blogs#index" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'profile', to: 'blogs#profile' ,as: :user_profile
end
