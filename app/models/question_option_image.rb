class QuestionOptionImage < ApplicationRecord
  belongs_to :question

  validates :path, presence: true
end
