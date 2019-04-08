class CreateEntryQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_questions do |t|
      t.references :category, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
