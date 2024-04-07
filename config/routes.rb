# == Route Map
#

Rails.application.routes.draw do
  devise_for :users
  resources :documents do
    resource :transcription, only: [:show, :create, :update]
  end
  root 'home#index' # You will create this controller and view later for the landing page.
end

