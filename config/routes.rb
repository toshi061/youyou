Rails.application.routes.draw do
  get 'c/index'
  get 'e/index'
  get 'd/index'
  get 'a/index'
  resources :crosswords
  devise_for :users
  get 'correct/index'
  get 'mistake/index'
  resources :homes
  resources :posts
  get 'welcome/index'

  get "homes/show"
  get "crosswords/correct"
  get "a/index"
  get "a/correct"
  get "b/index"
  get "b/correct"
  get "c/index"
  get "c/correct"
  get "d/index"
  get "d/correct"
  get "e/index"
  get "e/correct"

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
