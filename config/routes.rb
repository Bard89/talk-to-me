# == Route Map
#

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  scope '(:locale)' do
    resources :documents do
      resource :transcription, only: [:show, :create, :update]
    end
  end
end

