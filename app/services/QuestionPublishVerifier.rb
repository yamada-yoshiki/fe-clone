class QuestionPublishVerifier
  def initialize(question)
    @question = question
  end

  def can_publish?
    contains_correct_option?(@question)
  end

  private
  def contains_correct_option?(question)
    question.question_options.where(correct_flag: true).any?
  end
end
