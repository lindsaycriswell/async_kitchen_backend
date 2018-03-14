class CreateInstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :instructions do |t|
      t.integer :recipe_id
      t.string :description
      t.integer :time
      t.boolean :do_ahead

      t.timestamps
    end
  end
end
