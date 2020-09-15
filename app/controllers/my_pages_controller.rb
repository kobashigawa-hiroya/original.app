class MyPagesController < ApplicationController
  # def index
  #   @mypages = MyPage.order(id: :asc)
  # end

  # def new
  #   @mypage = MyPage.new
  # end

  # def create
  #   mypage = MyPage.create!(mypage_params)
  # end

  # def show
  # end

  def edit
  end

  def update
    current_app.update!(app_params)
    redirect_to root_path
  end

  def destroy
    current_app.destroy!
    redirect_to root_path
  end

  private

  def app_params
    params.require(:app).permit(:title, :image)
  end
end
