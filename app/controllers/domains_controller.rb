class DomainsController < ApplicationController

  def new
    @domain = Domain.new
  end

  def create # domains#create
    Domain.create domain_name: params[:domain], owner_email: params[:email]
    flash[:notice] = "Success"
    redirect_to "/"
  end

end
