Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'homes#about', as: 'about_me'
  root "homes#index"
end
