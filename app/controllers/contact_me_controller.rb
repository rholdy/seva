class ContactMeController < ApplicationController
  def new
    @contact_me = ContactMe.new()
  end
  def create
    @contact_me = ContactMe.new(params[:contact_me])
    if @contact_me.save
    ContactMeMailer.contact_me(@contact_me).deliver
    redirect_to root_path, notice: "Message Sent. Stay Classy"
    else
      flash.now.alert = "Please correct the errors below"
      render :new
    end
  end
end