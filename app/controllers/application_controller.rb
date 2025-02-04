class ApplicationController < ActionController::Base
  # before_action :authenticated?
  # before_action :authenticate_user!, only: [ :new, :create, :edit ]
  # allow_unauthenticated_access only: %i[ index show ]


  before_action :debug_session
  # before_action :authenticate_admin!



  def debug_session
    Rails.logger.info "Session User ID: #{session[:user_id]}"
  end

  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private
    def authenticate_admin!
      unless current_user&.admin?
      redirect_to root_path, alert: "Not authorized to access admin panel"
      end
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
end
