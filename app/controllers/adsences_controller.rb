class AdsencesController < ApplicationController
  def index
  end

  def new
  end

  def create
    current_app.adsences.create!(adsence_params)
    redirect_to action: :index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
