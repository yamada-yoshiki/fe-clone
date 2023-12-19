class CreateQuestionOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :question_options do |t|
      t.string :text, null: false, default: ''
      t.integer :display_order, null: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
