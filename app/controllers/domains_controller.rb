class DomainsController < ApplicationController

  def new
    @domain = Domain.new
  end

  def create
    Domain.create domain_name: params[:domain], owner_email: params[:email]
    flash[:notice] = "Domain listed!"
    redirect_to "/"
  end

end
