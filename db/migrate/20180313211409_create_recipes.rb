class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :course
      t.string :servings
      t.integer :prep_time
      t.integer :cook_time
      t.integer :total_time
      t.string :url

      t.timestamps
    end
  end
end
