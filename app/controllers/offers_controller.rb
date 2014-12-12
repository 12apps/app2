class OffersController < ApplicationController
  def new
    # The domain resolutoin magic
    puts request.inspect
  end
end
