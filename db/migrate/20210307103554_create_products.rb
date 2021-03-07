class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :description
      t.Integer :brand
      t.Integer :category
      t.float :price

      t.timestamps
    end
  end
end
