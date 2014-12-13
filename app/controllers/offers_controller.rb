class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    OfferMailer.send_offer(params[:name], params[:email], params[:message], request).deliver
    flash[:notice] = "Offer sent!"
    redirect_to new_offer_path
  end
end
