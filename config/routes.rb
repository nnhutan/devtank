Rails.application.routes.draw do
  devise_for :users,
             controllers: { registrations: 'users/registrations',
                            omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'home#index'
  resources :editor, only: [:index]

  scope module: 'admin', as: 'admin' do
    constraints subdomain: 'admin' do
      resources :users, only: [:index]
    end
  end
end
