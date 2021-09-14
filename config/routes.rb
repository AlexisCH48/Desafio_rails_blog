Rails.application.routes.draw do
  get 'posts/index'
  root 'posts#index'
  post 'post/create', to: "posts#create", as: "post_create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
