Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  get 'cookies', to:"cookies#index"
  get 'cookies/consent', to:"cookies#policy", as: "cookie_consent"
  get 'cookies/policy', to:"cookies#policy", as: "cookie_policy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :spaces, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :update, :destroy] do
    collection do
      get :host_index
    end
  end
  get "map", to: "pages#map"
  get "messages", to: "pages#messages"
  get "profile", to: "pages#profile"
end
