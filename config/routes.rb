Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  scope '(:locale)' do
    resources :documents do
      resources :voices, only: [:create, :destroy] do
        member do
          get :download
          get :play
        end
      end
    end
  end
end
