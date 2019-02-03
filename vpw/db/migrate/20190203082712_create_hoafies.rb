class CreateHoafies < ActiveRecord::Migration[5.1]
  def change
    create_table :hoafies do |t|
      t.string :picture
      t.string :comment
      t.string :userName
      t.boolean :verified
      t.integer :likes
      t.boolean :hoafieOfWeek

      t.timestamps
    end
  end
end
