class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :domain_for_sale

  private
  def domain_for_sale
    @current_domain = Domain.where(domain_name: request.host).first

    if @current_domain && params[:controller] != "offers"
      redirect_to new_offer_path
    end
  end
end
