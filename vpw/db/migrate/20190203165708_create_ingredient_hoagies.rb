class CreateIngredientHoagies < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredient_hoagies do |t|
      t.integer :ingredient_id
      t.integer :hoagy_id

      t.timestamps
    end
  end
end
