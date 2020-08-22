class SaturdayApplicationsController < ApplicationController
  def index
    @saturday_params = SaturdayApplications.find(params)
  end

  def new
  end

  def create
    keys = saturday_params.keys
    values = saturday_params.values
    params = values[0].zip(*values[1..-1]).map do |value|
      value.delete("")
      next if value.count != keys.count
      (keys.zip value).to_h
    end
    current_app.saturday_applications.create!(params.compact)
    redirect_to root_path, notice: "土曜申請を送信しました！"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def saturday_params
    params.require(:saturday_application).permit(date: [], start_time: [], end_time: [], title: [])
  end
end
