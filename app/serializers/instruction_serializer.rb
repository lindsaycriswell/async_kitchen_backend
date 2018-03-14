class InstructionSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :description, :time, :do_ahead

  belongs_to :recipe
end
