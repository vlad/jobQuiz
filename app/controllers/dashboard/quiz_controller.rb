class Dashboard::QuizController < Dashboard::DashboardController
  before_action :set_quiz, :leave_if_quiz_expired_or_answered_completely

  layout 'quiz'

  def take
    responses = @quiz.blank_responses
    if responses.count > 0
      @response = responses.first
      @question = @response.question
      @number = @quiz.next_question_number
    end
  end

  def respond
    p = params.permit(:response_id, :answer_id)
    response = @quiz.responses.find(p[:response_id])
    response.answer = Answer.find(p[:answer_id])
    response.correct = (response.answer.id == response.question.correct_answer_id)
    response.save

    redirect_to ('/dashboard/quiz')
  end

  private

  def set_quiz
    @quiz = current_user.most_recent_quiz
    if !@quiz
      if Question.count == 0
        redirect_to ('/')
      end
      @quiz = Quiz.new(user: current_user, seconds_limit: Rails.application.config.seconds_limit).generate
      @quiz.save
    end
  end

  def leave_if_quiz_expired_or_answered_completely
    if @quiz.completed?
      redirect_to ('/')
    end
  end

end
