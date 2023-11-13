class QuestionForm
  include ActiveModel::Model
  include ActiveRecord::AttributeAssignment
  attr_accessor :title, :question_contents, :question_option_image, :question_options



  validates :title, presence: true
  validate :validate_question_contents
  validate :validate_questions
  validate :validate_question_image

  def initialize(attributes = {})
    super
    @question_contents ||= []
    @question_options ||= []
  end

  def save
    if valid?
      # 例: BlogPost.create(title: title, content: content, tags: tag_objects.map(&:tag_name))
      question = Question.create(title: title)
      # question.question_contents.create

      return true
    else
      return false
    end
  end

  private 

  def validate_question_contents
    @question_contents.each do |content|
      unless content.valid?
        errors.add(:question_contents, "Invalid question_contents")
      end
    end
  end

  
  def validate_question_options
    @question_options.each do |option|
      unless option.valid?
        errors.add(:question_options, "Invalid question_options")
      end
    end
  end

  def validate_question_option_image
    unless question_option_image.valid?
      errors.add(:question_option_image, "Invalid question_option_image")
    end
  end
end
