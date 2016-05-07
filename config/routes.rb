Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, :only => [:show] do
    post :messages
  end
  resources :cinemas
  resources :movies do
    resources :timetables, except: [:show, :index]
    resources :photos
    post :comments, on: :member, to: 'movies#new_comment'
    patch :comments, on: :member, to: 'movies#new_comment'
    delete :comments, on: :member, to: 'movies#delete_comment'
  end
end
