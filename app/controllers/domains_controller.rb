class DomainsController < ApplicationController

  def new
    @domain = Domain.new
  end

  def create # domains#create
    puts "we're in business"
    redirect_to "/"
  end

end
