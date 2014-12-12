class OffersController < ApplicationController
  def new
		@offer = Offer.new
    puts request.inspect
  end
