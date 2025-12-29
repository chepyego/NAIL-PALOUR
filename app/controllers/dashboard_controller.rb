class DashboardController < ApplicationController
  def index
    @bookings = Current.user.bookings.includes(:service)

    # SELECT COUNT(*) FROM bookings WHERE user_id = current_user
    @total_bookings = Current.user.bookings.count
  end
end
