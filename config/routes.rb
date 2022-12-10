Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  # devise_for :users, controllers: {
  #   omniauth_callbacks: 'users/omniauth_callbacks',
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }

  get 'home', to: "home#index"

  root to: "home#index"
end
