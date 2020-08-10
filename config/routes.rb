Rails.application.routes.draw do
  devise_for :members, controllers: { sessions: 'members/sessions', registrations: 'members/registrations' }
  get '/members/registrations/new', to: "members/registrations#new"
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
