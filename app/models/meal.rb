class Meal < ApplicationRecord
  has_many :recipe_meals
  has_many :recipes, through: :recipe_meals
  belongs_to :user
end
