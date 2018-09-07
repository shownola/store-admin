class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :price
      t.decimal :cost
      t.string :sku
      t.date :date_available
      t.date :date

      t.timestamps
    end
  end
end
