class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @letter = Letter.new
    @welcomtime = current_app.welcom_times
    @posts = Post.order(id: :desc).page(params[:page]).per(6)
    @absence = Absence.new
    @absences = current_app.absences.order("date")
    @absence_list = Absence::ABSENCE_LIST.map { |title| [title, title] }
    date_range = Date.current.beginning_of_month..Float::INFINITY
    @saturday_applications = current_app.saturday_applications.where(date: date_range).order(date: :asc)
    @saturday_application = SaturdayApplication.new
    @saturday_application_list = SaturdayApplication::SATURDAY_APPLICATION_LIST.map { |title| [title, title] }
  end

  # def show
  # end

  def new
    @post = Post.new
    @absence = Absence.new
    @saturday_application = SaturdayApplication.new
  end

  def create
    @absence.save!(absences_params)
    @saturday_application.save!(saturday_application_params)
    # current_app.posts.create!(post_params)
    # redirect_to action: :index
  end

  def edit
    @saturday_application_list = SaturdayApplication::SATURDAY_APPLICATION_LIST.map { |title| [title, title] }
  end

  # def update
  #   @post.update!(post_params)
  #   redirect_to (post_params), notice: "更新しました"
  # end

  def destroy
    @post.destroy!
    @absence.destroy!
    redirect_to posts alert: "削除しました"
  end

  # private

  # def set_post
  #   @post = Post.find(params[:id])
  # end

  # def correct_user
  #   @post = current_user.posts.find_by(id: params[:id])
  #   redirect_to root_path if @post.nill?
  # end

  # def post_params
  #   params.require(:post).permit(:title, :content, :image)
  # end
  def absences_params
    params.require(:absences).permit(:title, :content, :app_id)
  end

  def saturday_applications_params
    params.require(:saturday_applications).permit(:title, :content, :start_time, :end_time, :date, :app_id)
  end
end
