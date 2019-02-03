class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null => false
      t.integer :price
      t.integer :maxUsage
      t.boolean :available

      t.timestamps
    end
  end
end
