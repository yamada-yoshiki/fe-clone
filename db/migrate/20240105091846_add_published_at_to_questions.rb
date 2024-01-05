class AddPublishedAtToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :published_at, :datetime
  end
end
