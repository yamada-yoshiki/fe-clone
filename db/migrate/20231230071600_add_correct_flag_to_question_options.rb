class AddCorrectFlagToQuestionOptions < ActiveRecord::Migration[7.0]
  def change
    add_column :question_options, :correct_flag, :boolean, null: false, default: false
  end
end
