class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @letter = Letter.new
    @welcomtime = current_app.welcom_times
    @posts = Post.all.page(params[:page]).per(6)
  end

  # def show
  # end

  # def new
  #   @post = Post.new
  # end

  # def create
  #   current_app.posts.create!(post_params)
  #   redirect_to action: :index
  # end

  # def edit
  # end

  # def update
  #   @post.update!(post_params)
  #   redirect_to (post_params), notice: "更新しました"
  # end

  # def destroy
  #   @post.destroy!
  #   redirect_to @post, alert: "削除しました"
  # end

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
end
