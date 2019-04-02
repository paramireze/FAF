class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :category, foreign_key: true
      t.text :text
      t.boolean :required
      t.integer :order
      t.text :type

      t.timestamps
    end
  end
end
