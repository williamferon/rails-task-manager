Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # delete '/restaurants/:id', to: 'restaurants#destroy'

  # Defines the root path route ("/")
  # root "articles#index"
end
