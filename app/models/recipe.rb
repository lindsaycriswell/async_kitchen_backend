class Recipe < ApplicationRecord
  has_many :instructions
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :recipe_meals
  has_many :meals, through: :recipe_meals
end
