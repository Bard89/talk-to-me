Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  scope '(:locale)' do
    resources :documents do
      resources :voices do
        member do
          get :download
        end
      end
    end
  end
end
