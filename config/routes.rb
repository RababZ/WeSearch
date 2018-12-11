Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :projects do
    resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  resources :users, only: [:index]
  get "profile", to: "pages#profile"
  patch "profile", to: "pages#profile_update"
  get "contact_us", to: "pages#contact_us"

  get "close/:project_id/:id", to: "tasks#edit_to_close", as: :edit_task_to_close
  patch "/close/:project_id/tasks/:id", to: "tasks#close", as: :closetask
  # resources :tasks, only: [ :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
