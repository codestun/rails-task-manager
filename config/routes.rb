Rails.application.routes.draw do
  # get all
  get "tasks", to: "tasks#index"
  # form for new one
  get "tasks/new", to: "tasks#new", as: :new_task
  # for one
  get "tasks/:id", to: "tasks#show", as: :task
  # receive POST for creating record
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
end
