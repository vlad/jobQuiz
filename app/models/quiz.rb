class Quiz < ActiveRecord::Base
  belongs_to :user
  has_many :responses

  def question_count
    self.responses.count
  end

  def correct_count
    self.responses.where(correct: true).count
  end

  def completed_responses
    self.responses.where.not(answer: nil)
  end

  def blank_responses
    self.responses.where(answer: nil)
  end

  def seconds_remaining
    [seconds_limit - (Time.now - created_at), 0].max.floor
  end

  def next_question_number
    completed_responses.count + 1
  end

  def completed?
    ran_out_of_time? || blank_responses.count == 0
  end

  def ran_out_of_time?
    Time.now > created_at + seconds_limit
  end

  def generate
    number_of_questions = Rails.application.config.max_questions_per_quiz
    questions = Question.limit(number_of_questions).order("RANDOM()")
    questions.each do |question|
      self.responses.build(question: question)
    end
    self
  end
end
