class OffersController < ApplicationController
  def new
    # The domain resolutoin magic
    @host = request.host
  end
end
