class CreateQuestionOptionImages < ActiveRecord::Migration[7.0]
  def change
    create_table :question_option_images do |t|
      t.string :path, null: false, default: ''
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
