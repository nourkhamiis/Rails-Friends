Rails.application.routes.draw do
  devise_for :users
  resources :friends

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  # get 'home/index'
  get 'home/about'
  # root 'home#index'
  root 'friends#index'
end
