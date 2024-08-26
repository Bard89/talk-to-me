Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  scope '(:locale)' do
    resources :documents do
      resources :voices, only: [:index, :show, :create, :destroy]
    end
  end
end