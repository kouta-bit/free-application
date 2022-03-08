Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  devise_scope :users do
    get 'users/sign_up', to: 'users/registration#new'
    get 'users/sign_in', to: 'users/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'homes/top'
  root to: 'homes#top'
  
  get 'homes/home', to: 'homes#home'
  get 'homes/register', to: 'homes#register'
  get 'homes/edit', to: 'homes#edit'
  resources :homes
end
