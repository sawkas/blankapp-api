# frozen_string_literal: true

Rails.application.routes.draw do
  get 'ping', to: 'ping#ping'

  post 'auth/google', to: 'google_sign_in#auth'

  # resources
  resources :me, only: [:index]

  root to: 'ping#ping'
end
