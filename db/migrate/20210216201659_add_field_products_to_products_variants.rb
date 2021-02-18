class AddFieldProductsToProductsVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :products_variants, :products, :string
  end
end
