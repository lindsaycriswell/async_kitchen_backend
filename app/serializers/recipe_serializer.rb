class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :course, :servings, :prep_time, :cook_time, :total_time, :url

  has_many :directions
  has_many :ingredients
  has_many :recipe_meals
  has_many :meals, through: :recipe_meals
end
