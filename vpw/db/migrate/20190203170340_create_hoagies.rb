class CreateHoagies < ActiveRecord::Migration[5.1]
  def change
    create_table :hoagies do |t|
      t.string :name
      t.string :ingredients
      t.integer :price

      t.timestamps
    end
  end
end
