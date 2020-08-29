class SaturdayApplicationsController < ApplicationController
  def index
    @saturday_params = SaturdayApplications.find(params)
  end

  def new
  end

  def create
    keys = saturday_params_list.keys
    values = saturday_params_list.values
    params = values[0].zip(*values[1..-1]).map do |value|
      value.delete("")
      next if value.count != keys.count
      (keys.zip value).to_h
    end
    current_app.saturday_applications.create!(params.compact)
    redirect_to root_path, notice: "土曜申請を送信しました！"
  end

  def edit
    @saturday_application_list = SaturdayApplication::SATURDAY_APPLICATION_LIST.map { |title| [title, title] }

    @saturday_applications = current_app.saturday_applications.find(params[:id])
  end

  def update
    @saturday_applications = current_app.saturday_applications.find(params[:id])
    @saturday_applications.update!(saturday_params)
    redirect_to root_path, alert: "編集しました！"
  end

  def destroy
    @saturday_applications = current_app.saturday_applications.find(params[:id])
    @saturday_applications.destroy!
    redirect_to root_path, alert: "削除しました!"
  end

  private

  def saturday_params
    params.require(:saturday_application).permit(:date, :title, :start_time, :end_time)
  end

  def saturday_params_list
    params.require(:saturday_application).permit(date: [], start_time: [], end_time: [], title: [])
  end
end
