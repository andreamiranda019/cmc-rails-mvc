class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.string :code
      t.float :price
      t.string :brand
      t.string :material
      t.string :type
      t.string :color
      t.string :size
      t.text :use

      t.timestamps
    end
  end
end
