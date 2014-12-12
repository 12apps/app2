class OffersController < ApplicationController
  def new
    @offer = Offer.new
    # The domain resolutoin magic
    @host = request.host
  end
end
