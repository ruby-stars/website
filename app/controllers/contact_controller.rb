class ContactController < ApplicationController
  def index; end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you shortly!'
      flash.keep
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end

  private

  def contact_params
    params.permit(:firstName, :email, :message)
  end
end
