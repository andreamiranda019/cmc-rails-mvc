Rails.application.routes.draw do
  resources :categories only: %i[index show]do
    resources :product, only: %i[show]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
