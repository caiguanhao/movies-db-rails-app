Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :cinemas
  resources :movies do
    resources :timetables, except: [:show, :index]
    post :comments, on: :member, to: 'movies#new_comment'
    patch :comments, on: :member, to: 'movies#new_comment'
  end
end
