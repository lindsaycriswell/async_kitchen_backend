Rails.application.routes.draw do
  # resources :users
  resources :meals
  resources :recipe_meals, only: [:index, :create, :update, :destroy]
  # resources :directions
  # resources :ingredients
  resources :recipes, only: [:index, :show]

end
