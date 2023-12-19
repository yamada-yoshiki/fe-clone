class CreateQuestionContents < ActiveRecord::Migration[7.0]
  def change
    create_table :question_contents do |t|
      t.string :sentence
      t.string :image_path
      t.integer :display_order, null: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
