class SaturdayApplicationsController < ApplicationController
  def index
  end

  def new
  end

  def create
    binding.pry
    current_app.saturday_applications.create!(saturday_applications_params)
    redirect_to root_path, notice: "土曜申請を送信しました！"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def saturday_applications_params
    params.require(:saturday_application).permit(:start_time, :end_time, :content, :date)
  end
end
