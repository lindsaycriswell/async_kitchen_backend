Rails.application.routes.draw do
  # resources :users
  resources :meals, only: [:create]
  resources :recipe_meals, only: [:index, :create, :update, :destroy]
  # resources :directions
  resources :ingredients, only: [:index]
  resources :recipes
  # placeholder for current meal - update with meal ID
  get "/current", to: "meals#current"
  get "/display_recipes", to: "recipes#display_recipes"
  get "/current_meal_recipes", to: "recipes#current_meal_recipes"
  post "/meals/remove_recipe", to: "meals#remove_recipe"

end
