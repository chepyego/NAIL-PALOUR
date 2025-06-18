class HomeController < ApplicationController
  # before_action :allow_unauthenticated_access, only: %i[ index  ]

  allow_unauthenticated_access only: %i[ index about_us ]


  def index;end
  def about_us;end
end
