class HomeController < ApplicationController
  # before_action :allow_unauthenticated_access, only: %i[ index  ]

  allow_unauthenticated_access only: %i[ index ]


  def index;end
end
