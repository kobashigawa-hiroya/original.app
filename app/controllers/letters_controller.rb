class LettersController < ApplicationController
  def create
    current_app.letters.create!(letter_add_params)
    redirect_to root_path
  end

  def update
    letter = Letter.find(params[:id])
    letter.update!(letter_params)
    redirect_to root_path
  end

  def destroy
  end

  private

  def letter_params
    params.require(:letter).permit(:body_temperature, :content)
  end

  def letter_add_params
    letter_params.merge params.permit(:post_id)
  end
end
