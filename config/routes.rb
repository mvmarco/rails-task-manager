Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "tasks/new", to: "tasks#new"
  post 'tasks', to: 'tasks#create'

  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: "task"

  # 1. read the form - EDIT - only the GET routes have a view
   get 'tasks/:id/edit', to: 'tasks#edit', as: "edit"
  # 2. update the tasks - UPDATE
   patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'

end
