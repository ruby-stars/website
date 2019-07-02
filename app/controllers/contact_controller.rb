class ContactController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    #if @contact.save
    #  redirect_to thank_you_path
    #else
    #  render "new"
    #end

    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to thank_you_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end

  private

  def contact_params
    params.permit(:firstName, :email, :message)
  end

  def thank_you
  end
end
