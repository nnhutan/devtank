Rails.application.routes.draw do
  devise_for :users,
             controllers: { registrations: 'users/registrations',
                            omniauth_callbacks: 'users/omniauth_callbacks' }

  scope module: 'admin', as: 'admin' do
    constraints subdomain: 'admin' do
      root 'home#index'
      resources :users, only: [:index]
    end
  end

  root 'home#index'
  resources :editor, only: [:index]
  resources :users, only: %i[show]
end
