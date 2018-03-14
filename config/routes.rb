Rails.application.routes.draw do
  # resources :users
  resources :meals
  resources :recipe_meals, only: [:create, :update, :destroy]
  # resources :instructions
  resources :ingredients, only: [:index, :show]
  # resources :recipe_ingredients
  resources :recipes, only: [:index, :show]

end
