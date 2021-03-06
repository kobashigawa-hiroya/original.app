class MenusController < ApplicationController
  before_action :set_menu, only: %i[show edit update destroy]

  def index
    @menus = Menu.order(id: :asc)
    @menus = Menu.all.page(params[:page]).per(5)
  end

  def new
    @menu = Menu.new
  end

  def create
    menu = Menu.create!(menu_params)
  end

  def show
  end

  def edit
  end

  def update
    @menu.update!(menu_params)
    redirect_to @menu
  end

  def destroy
    @menu.destroy!
    redirect_to @menu
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:title, :content, :image)
  end
end
