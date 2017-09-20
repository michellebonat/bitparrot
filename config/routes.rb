Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get "/pages/:page" => "pages#show"
  get 'pages/about', to: 'pages#about', as: :about
  get 'pages/faq', to: 'pages#faq', as: :faq
  get 'pages/contact', to: 'pages#contact', as: :contact
  get 'visitors/ruby_and_rails', to: 'visitors#ruby_and_rails', as: :ruby_and_rails
  get 'visitors/python', to: 'visitors#python', as: :python
end
