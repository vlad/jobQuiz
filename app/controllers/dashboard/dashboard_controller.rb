class Dashboard::DashboardController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  layout 'dashboard'
  
  def index

  end
end