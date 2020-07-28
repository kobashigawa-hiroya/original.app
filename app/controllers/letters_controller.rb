class LettersController < ApplicationController
  def index
    @letter = Letter.new
    @letters = Letter.all
  end

  def new
    letter = current_app.letters.build(letter_params)
    redirect_to action: :index
  end

  def create
    current_app.letters.create!(letter_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def letter_params
    params.require(:letter).permit(:body_temperature, :content)
  end
end
