Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :spaces, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :update, :destroy] do
    collection do
      get :host_index
    end
  end
  get "messages", to: "pages#messages"
  get "profile", to: "pages#profile"
end
