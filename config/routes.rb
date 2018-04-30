Rails.application.routes.draw do
  # resources :users
  resources :meals
  resources :recipe_meals, only: [:index, :create, :update, :destroy]
  # resources :directions
  resources :ingredients, only: [:index]
  resources :recipes, only: [:index, :show]
  # placeholder for current meal - update with meal ID
  get "/current", to: "meals#current"
  post "/meals/remove_recipe", to: "meals#remove_recipe"

end
