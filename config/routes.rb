# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :employees

  namespace :employees do
    root to: 'projects#index'
  end

  resources :projects do
    resources :assignments
  end

  get 'assignments/index', to: 'assignments#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'projects#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
