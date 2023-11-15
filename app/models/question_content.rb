class QuestionContent < ApplicationRecord
  belongs_to :question

  validate :check_content
  validates :display_order, {presence: true, numericality: true}

  private

  def check_content
    if sentence.nil? && image_path.nil?
      errors.add(:base, 'Either sentence or image_path is required.')
    end
  end
end