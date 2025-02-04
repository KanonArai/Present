Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  
  get 'hello/index' => 'hello#index'
  root 'hello#index'
end
