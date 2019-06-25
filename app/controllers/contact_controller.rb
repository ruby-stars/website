class ContactController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      #flash[:notice] = "Thank you!"
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def contact_params
    params.permit(:firstName, :email, :message)
  end
end
