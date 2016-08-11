Rails.application.routes.draw do

  get 'user_posts/:user_id' => 'posts#user', as: :user_posts

  devise_for :users
  resources :posts do
    resources :likes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
