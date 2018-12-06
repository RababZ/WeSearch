Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :projects do
    resources :tasks, only: [ :index, :new, :create, :edit, :update, :destroy]
  end

  get "profile", to: "pages#profile"
  patch "profile", to: "pages#profile_update"
  # resources :tasks, only: [ :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
