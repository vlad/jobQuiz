class Dashboard::DashboardController < ApplicationController
  before_action :register_first

  layout 'dashboard'

  def index
    if current_user.most_recent_quiz
      if !current_user.most_recent_quiz.completed?
        redirect_to ('/dashboard/quiz')
      end
    end
  end

  def register_first
    redirect_to new_user_registration_url if !user_signed_in? && !request.path.include?('/users/')
  end
end