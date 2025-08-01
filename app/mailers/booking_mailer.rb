class BookingMailer < ApplicationMailer
  default from: "no-reply@example.com"
  def confirmed_booking (booking)
    @booking = booking
    mail(to: @booking.email, subject: "Booking confirmation")
  end

  def admin_new_booking_notification(booking)
    @booking = booking
    mail(to: "jchepyego@gmail.com", subject: "You have a new booking!")
  end
end
