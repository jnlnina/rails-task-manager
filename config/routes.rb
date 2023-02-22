Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # List all tasks
  # root to: 'tasks#index'
  get 'tasks', to: 'tasks#index'
  # Show create form
  get 'tasks/new', to: 'tasks#new'
  # Create the task
  post 'tasks', to: 'tasks#create'
  # List one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Show edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # Update task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
