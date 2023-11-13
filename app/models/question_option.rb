class QuestionOption < ApplicationRecord
  belongs_to :question

  validates :display_order, {presence: true, numericality: true}
end
