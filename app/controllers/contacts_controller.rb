class ContactsController < ApplicationController
  def index
    @contact = Contact.new
    @contacts = Contact.all
  end

  def create
    @contact = current_app.contacts.build(contact_params)
    @contact.my_contact = true
    @contact.save!
    # redirect_to action: :index
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :content)
  end
end
