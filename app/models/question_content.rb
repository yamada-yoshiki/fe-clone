class QuestionContent < ApplicationRecord
  # 未実装でエラーになっているので一旦コメントアウト
  # mount_uploader :image_path, QuestionImageUploader
  belongs_to :question

  validate :check_content
  validates :display_order, {presence: true, numericality: true}

  
  def initialize(attributes = {})
    super(attributes)
    self.display_order = maximum_display_order(self.question_id) + 1
    self
  end
  

  private
  def maximum_display_order(question_id)
    QuestionContent.where(question_id: question_id).maximum(:display_order).to_i
  end

  def check_content
    if sentence.nil? && image_path.nil?
      errors.add(:base, 'Either sentence or image_path is required.')
    end
  end
end
