class AbsencesController < ApplicationController
  def create
    current_app.absences.create!(absences_params)
    redirect_to root_path, notice: "欠席届けを送信しました！"
  end

  def update
    @absence = current_app.absences.find(params[:id])
    @absence.update!(absences_params)
    redirect_to root_path
  end

  def edit
    @absence_list = Absence::ABSENCE_LIST.map { |title| [title, title] }

    @absence = current_app.absences.find(params[:id])
  end

  def destroy
    @absence = current_app.absences.find(params[:id])
    @absence.destroy!
    redirect_to root_path, alert: "削除しました!"
  end

  private

  def absences_params
    params.require(:absence).permit(:title, :content, :date)
  end
end
