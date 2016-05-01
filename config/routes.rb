Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :cinemas
  resources :movies do
    resources :timetables
  end
end
