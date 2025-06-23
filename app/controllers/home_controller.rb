class HomeController < ApplicationController
  # before_action :allow_unauthenticated_access, only: %i[ index  ]

  allow_unauthenticated_access only: %i[ index about_us contact_us ]


  def index;end
  def about_us;end
  def contact_us;end
end
