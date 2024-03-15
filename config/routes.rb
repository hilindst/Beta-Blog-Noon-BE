Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  resources :blogs do
    post 'like'
    delete 'unlike'
  end
  resources :users, only: [:create]
  resources :messages, only: [:index, :create]
end
