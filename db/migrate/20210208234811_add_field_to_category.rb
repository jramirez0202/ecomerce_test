class AddFieldToCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :category, optional: true
  end
  
end
