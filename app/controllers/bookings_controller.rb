class BookingsController < ApplicationController
  # include Authentication

  # before_action :user_login
  allow_unauthenticated_access only: %i[ new index create destroy ]


  def new
    @booking = Booking.new
  end

  def index
    @bookings = current_user.bookings
  end

  def success
    @booking = Booking.find(params[:id])
  end
  def create
    if current_user

       @booking = current_user.bookings.new(booking_params)
    else

    @booking = Booking.new(booking_params)
    end

    if @booking.save
      flash[:notice] = "Booking was successful"
      redirect_to success_booking_path(@booking)

    else
      flash.now[:alert]= "something went wrong"
      #  render :new, alert: "Something went wrong"
    end
  end

  def destory
   @booking.destroy
   redirect_to bookings_path, notice: "Booking cancelled"
  end

  private

  def booking_params
  params.require(:booking).permit(:service_id, :date, :name, :email, :phone_number)
  end

  def user_login
    unless current_user
      redirect_to login_path, alert: "You must login to access this feature"
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user  # Make available in views
end
