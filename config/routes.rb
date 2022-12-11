Rails.application.routes.draw do
  scope :api do
    # scope to do not change devise method names
    mount_devise_token_auth_for 'User', at: 'auth'
  end

  namespace :api do
    resources :me, only: [:index]
  end

  get 'ping', to: 'ping#ping'

  root to: 'home#index'
end
