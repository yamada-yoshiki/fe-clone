class QuestionOption < ApplicationRecord
  belongs_to :question

  validates :display_order, {presence: true, numericality: true}

  def initialize(attributes = {})
    super(attributes)

    self.display_order = maximum_display_order(self.question_id) + 1
    self
  end

  private
  def maximum_display_order(question_id)
    QuestionOption.where(question_id: question_id).maximum(:display_order).to_i
  end
end
