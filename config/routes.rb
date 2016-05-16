Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:index, :show, :destroy] do
    post :follows, to: 'users#follow'
    delete :follows, to: 'users#unfollow'
    post :messages
  end
  resources :cinemas
  resources :movies do
    resources :timetables, except: [:show, :index]
    resources :photos, only: [:index, :update, :destroy]
    post :add_photos, on: :member, to: 'movies#add_photos'
    post :likes, on: :member, to: 'movies#like'
    delete :likes, on: :member, to: 'movies#unlike'
    post :comments, on: :member, to: 'movies#new_comment'
    patch :comments, on: :member, to: 'movies#new_comment'
    delete :comments, on: :member, to: 'movies#delete_comment'
    delete :comment_by_id, on: :member, to: 'movies#delete_comment_by_id'
  end
end
