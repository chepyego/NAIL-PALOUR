class AdminController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_current_user

  private


  def set_current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  def authenticate_admin!
    unless current_user&.admin?
    redirect_to root_path, alert: "Not authorized to access admin panel"
    end
  end
end
