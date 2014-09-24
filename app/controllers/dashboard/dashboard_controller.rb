class Dashboard::DashboardController < ApplicationController
  before_action :register_first

  layout 'dashboard'

  def register_first
    redirect_to new_user_registration_url if !user_signed_in? && !request.path.include?('/users/')
  end
end