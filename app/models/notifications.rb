class Notifications < ActionMailer::Base

  def question(email_params, sent_at = Time.now)
    subject "[Nuevo Contacto en Peganda Gestoría Online] " << email_params[:company]
    recipients "info@peganda.com" # Perhaps your address here?
    from "info@peganda.com"
    sent_on sent_at

    # allows access to @message and @sender_name
    # in the view
    body :message => email_params[:body], 
         :sender_name => email_params[:name],
         :sender_address => email_params[:address],
         :sender_telephone => email_params[:telephone],
         :sender_company => email_params[:company]

  end

  

end
