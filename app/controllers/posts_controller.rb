class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :asc)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update!(post_params)
    redirect_to (post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy!
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
end
