class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    # data in params
    # params[:name], params[:email], params[:message]
    # Send an Email using ActionMailer
    #
    # OfferMailer.send_offer(....).deliver
  end
end
