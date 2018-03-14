class RecipeMealSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :meal_id

  belongs_to :recipe
  belongs_to :meal
end
