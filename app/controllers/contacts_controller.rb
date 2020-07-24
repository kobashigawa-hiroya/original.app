class ContactsController < ApplicationController
  def index
  end

  def create
    current_app.contacts.create!(contact_params)
  end

  private

  def contact_params
    params.require(:contacts).permit(:title, :content)
  end
end
