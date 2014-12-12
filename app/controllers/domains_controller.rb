class DomainsController < ApplicationController

  def new
    @domain = Domain.new
  end

  def create # domains#create
    puts "we're in business"
    puts params[:domain]
    puts params[:email]
    Domain.create domain_name: params[:domain], owner_email: params[:email]
    flash[:notice] = "Success"
    redirect_to "/"
  end

end
