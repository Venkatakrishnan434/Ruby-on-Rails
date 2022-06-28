Rails.application.routes.draw do
  root 'todos#list'
  get 'todos/index'
  match '/a', :to=> 'todos#create', :via=>:post
  delete 'todos/:id', to: 'todos#destroy'
  put "todos/:id", to: "todos#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
