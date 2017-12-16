class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      @status = "success"
    else 
      @status = "error"
    end
  end
end
