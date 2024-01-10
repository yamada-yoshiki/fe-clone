class Question < ApplicationRecord
  has_many :question_contents, dependent: :destroy
  has_many :question_options, dependent: :destroy
  has_many :question_option_images, dependent: :destroy

  validates :title, presence: true

  def is_published?
    self.published_at.present?
  end

  def publish!
    self.update!(published_at: Time.current)
  end

  def unpublish!
    self.update!(published_at: nil)
  end
end
