Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
