class Settings::UsersController < Settings::BaseController
  def show
    #  @bookings =  Booking.where(user_id: user.id)
    @bookings = Current.user.bookings.includes(:service)

    # SELECT COUNT(*) FROM bookings WHERE user_id = current_user
    @total_bookings = Current.user.bookings.count
    # @total_booking = Current.user.bookings.sum

    # SELCT * FROM bookings WHERE user_id = 1;
  end
  def users_bookings
  end

  def destroy
    terminate_session
    Current.user.destroy
    redirect_to root_path, notice: "Your account has been deleted."
  end
end
