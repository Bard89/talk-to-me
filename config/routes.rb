# == Route Map
#

Rails.application.routes.draw do
  devise_for :users
  resources :documents do
    resource :transcription, only: [:show, :create, :update]
  end
  root 'documents#index'
end

