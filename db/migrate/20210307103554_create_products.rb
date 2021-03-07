class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :description
      t.integer :brand
      t.integer :category
      t.float :price

      t.timestamps
    end
  end
end
