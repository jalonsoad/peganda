class ContactController < ApplicationController

    
  def index
    #render index.html.erb
  end

  def send_mail
          if verify_recaptcha
            Notifications.deliver_question(params[:email])
            flash[:notice] = "Gracias por su email, en breve nos pondremos en contacto con usted."
            redirect_to :action => "index"
            
      else
       flash[:notice] = "Lo sentimos ha habido un error con el código introducido, pruebe de nuevo"
       redirect_to :action => "index"
      end
  end

end
