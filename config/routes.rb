Rails.application.routes.draw do
  root to: 'empresas#index'

  resources :empresas do
    collection do
      post 'change_empresa'
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
