class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }

  def new
  end

  def create
    # Rails.logger.info("PARAMS: #{params.inspect}")  # 🔍 Log the incoming parameters

    # credentials = params.permit(:email_address, :password).to_h

    if user = User.authenticate_by(email_address: params[:email_address], password: params[:password])
      start_new_session_for user
      session[:user_id] = user.id
      # Manually ensure session is set

      redirect_to after_authentication_url
    else
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def destroy
    terminate_session
    redirect_to new_session_path
  end
end
