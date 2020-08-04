class SawsController < ApplicationController
  def new
    saws = Saw.new
  end

  def create
    current_app.saws.create!(post_id: params[:post_id])
    redirect_to root_path
  end

  def destroy
    current_app.saws.find_by(post_id: params[:post_id]).destroy!
    redirect_to root_path
  end
end
