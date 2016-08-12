class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, default: 0
      t.text :description
      t.timestamps
      t.integer :cart_id
    end
  end
end
