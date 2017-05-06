class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(message_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to contact_url, notice: 'Message send' }
      else
        format.html { render :new }
      end
    end
  end
  
  private

    def message_params
      params.require(:contact).permit(:name, :phone, :email, :message)
    end
end
