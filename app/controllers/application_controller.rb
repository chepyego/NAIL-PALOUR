class ApplicationController < ActionController::Base
  # before_action :authenticated?
  # before_action :authenticate_user!, only: [ :new, :create, :edit ]
  # allow_unauthenticated_access only: %i[ index show ]




  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
