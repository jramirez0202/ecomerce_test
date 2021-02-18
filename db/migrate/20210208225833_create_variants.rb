class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
