Rails.application.routes.draw do
  root to: "tops#index"
  resources :favorites, only: [:show, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    member do
      get :favorite
    end
  end
  resources :pictures do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
