class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.integer :cuisine_id
      t.integer :type_id
      t.integer :key_food_id

      t.timestamps

    end
  end
end
