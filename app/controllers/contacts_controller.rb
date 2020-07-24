class ContactsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    current_app.contact.create!(contact_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
