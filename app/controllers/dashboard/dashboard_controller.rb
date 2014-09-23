class Dashboard::DashboardController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]

  layout 'dashboard'
  
  def welcome

  end
end