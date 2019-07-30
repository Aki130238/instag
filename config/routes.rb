Rails.application.routes.draw do
  root to: "tops#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :pictures do
    collection do
      post :confirm
    end
  end

end
