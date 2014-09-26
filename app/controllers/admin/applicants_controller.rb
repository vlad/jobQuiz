class Admin::ApplicantsController < Admin::AdminController
  include ApplicantsHelper

  require 'digest/md5'

  def index
    @applicants = User.joins(:quizzes).order('updated_at DESC')
  end

  def show

  end
end