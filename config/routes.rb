Rails.application.routes.draw do
  devise_for :members, controllers: { sessions: 'members/sessions', registrations: 'members/registrations' }
  resources :posts, only: [:new, :create, :index]
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
end
