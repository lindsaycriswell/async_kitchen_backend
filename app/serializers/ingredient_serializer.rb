class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :description, :search_name

  belongs_to :recipe
end
