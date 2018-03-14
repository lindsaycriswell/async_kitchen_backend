class MealSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name

  has_many :recipe_meals
  has_many :recipes, through: :recipe_meals
  belongs_to :user
end
