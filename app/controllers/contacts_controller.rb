class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    contact = Contact.create!(contact_params)
    redirect_to action: :index
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :content)
  end
end
