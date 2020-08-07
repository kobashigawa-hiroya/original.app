class AbsencesController < ApplicationController
  def create
    current_app.absences.create!(absences_params)
    redirect_to root_path, notice: "欠席届けを送信しました！"
  end

  def update
  end

  def destroy
  end

  def absences_params
    params.require(:absence).permit(:title, :content, :date)
  end
end
