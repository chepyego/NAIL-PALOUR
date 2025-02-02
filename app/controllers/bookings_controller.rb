class BookingsController < ApplicationController
  include Authentication

  before_action :user_login

  def new
    @booking = Booking.new
  end

  def index
    @bookings = current_user.bookings
  end
  def create
    @booking = current_user.bookings.new(booking_params)

    if @booking.save
      redirect_to @booking, notice: "Booking was Successful"
    else
     render :new, alert: "Something went wrong"
    end
  end

  def destory
   @booking.destroy
   redirect_to bookings_path, notice: "Booking cancelled"
  end

  private

  def booking_params
  params.require(:booking).permit(:service_id, :date)
  end

  def user_login
    unless current_user
      redirect_to login_path, alert: "You must login to access this feature"
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
