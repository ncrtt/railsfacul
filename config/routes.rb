Rails.application.routes.draw do
  resources :classroom_teachers
  resources :classroom_students
  resources :classrooms
  resources :items
  resources :type_items
  resources :people
  resources :teachers
  resources :students
  resources :subjects
  resources :tasks
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
