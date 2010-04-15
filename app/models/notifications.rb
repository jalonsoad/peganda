class Notifications < ActionMailer::Base

  def question(email_params, sent_at = Time.now)
    subject "[Nuevo Contacto en Peganda Gestoría Online] " << email_params[:company]
    recipients "info@peganda.com" # Perhaps your address here?
    from email_params[:address]
    sent_on sent_at

    # allows access to @message and @sender_name
    # in the view
    body :message => email_params[:body], :sender_name => email_params[:name]
  end

  

end
