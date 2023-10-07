class AddCheckConstraintToQuestionContent < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      ALTER TABLE question_contents
      ADD CONSTRAINT check_content
      CHECK (sentence IS NOT NULL OR image_path IS NOT NULL);
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE question_contents
      DROP CONSTRAINT IF EXISTS check_content;
    SQL
  end
end
