class WelcomtimesController < ApplicationController
  def create
    current_app.welcom_times.create!(time: Time.current, name: params[:garden])
    if params[:garden] == "登園"
      flash[:notice] = Time.current
    else
      flash[:alert] = Time.current
    end
    redirect_to posts_path
  end

  def destroy
    # ログインした本人の今日のデータのうちボタンに対応するものを削除
    # current_user.welcom_times.find_by().destroy!
    # redirect_to root_path
  end

  private

  def check_time
  end
end
