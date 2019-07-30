Rails.application.routes.draw do
  root to: "tops#index"
  resources :favorites, only: [:index, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :pictures do
    collection do
      post :confirm
      post :favorites
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
