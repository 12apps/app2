class OfferMailer < ActionMailer::Base

  def send_offer(name, email, message, request)
    @name = name
    @email = email
    @message = message
    @current_domain = Domain.where(domain_name: request.host).first
    puts @current_domain
    @owner = @current_domain.owner_email
    mail from: @email, to: @owner, subject: @name, body: @message
  end

end
