Rails.application.routes.draw do
  root 'home#index'

  devise_for :users , controllers: {registrations: "registrations"}
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

	#root to:'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
