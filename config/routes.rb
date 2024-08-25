# == Route Map
#

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  scope '(:locale)' do
    resources :documents do
      member do
        get 'text_to_speech'
      end
    end
  end
end