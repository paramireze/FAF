class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.text :name
      t.text :top_category
      t.text :sub_category
      t.integer :order

      t.timestamps
    end
  end
end
