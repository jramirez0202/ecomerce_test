class CreateProductsVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :products_variants do |t|
      t.references :variant, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end
