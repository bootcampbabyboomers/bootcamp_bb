Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blog_posts

  get "your_posts" => 'blog_posts#your_posts'

  get "user_posts" => 'blog_posts#user_posts'

  root "blog_posts#index"
end
