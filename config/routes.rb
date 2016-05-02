Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, :only => [:show]
  resources :cinemas
  resources :movies do
    resources :timetables, except: [:show, :index]
    post :comments, on: :member, to: 'movies#new_comment'
    patch :comments, on: :member, to: 'movies#new_comment'
  end
end
