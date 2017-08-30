Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :profile # get /profile
      resources :users

      get 'user/events', to: 'volunteer_applications#index', as: 'api_v1_user_events'

      resources :events do
        collection do
          get 'featured', to: 'events#featured', as: 'api_v1_events_featured'
        end
      end

      post 'events/:event_id/actions/apply', to: 'volunteer_applications#create', as: 'api_v1_apply'
    end
  end

  resources :events do
    resources :volunteer_applications do
      put 'confirm'
      put 'pending'
      put 'decline'
    end
  end
  resources :dashboard, only: [:index]
  resource :profile, only: [:show, :edit, :update]
end
