class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :question_options, :text, :sentence
  end
end
