# frozen_string_literal: true

Rails.application.routes.draw do
  get 'ping', to: 'ping#ping'

  # auth
  mount_devise_token_auth_for 'User', at: 'auth'
  post 'auth/google', to: 'google_sign_in#auth'

  # resources
  resources :me, only: [:index]

  root to: 'ping#ping'
end
