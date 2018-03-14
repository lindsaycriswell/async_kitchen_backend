class CreateRecipeMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_meals do |t|
      t.integer :recipe_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
