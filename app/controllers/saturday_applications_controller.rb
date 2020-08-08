class SaturdayApplicationController < ApplicationController
  def index
  end

  def new
  end

  def create
    current_app.saturday_application.create!(saturday_application_params)
    redirect_to root_path, notice: "土曜申請を送信しました！"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def saturday_application_params
    params.require(:saturday_application).permit(:content, :date)
  end
end
