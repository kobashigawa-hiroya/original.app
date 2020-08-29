class SawsController < ApplicationController
  def new
    saws = Saw.new
  end

  def create
    @post = Post.find(params[:post_id])
    current_app.saws.create!(post_id: @post.id)
    # redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:post_id])
    current_app.saws.find_by(post_id: @post.id).destroy!
    # redirect_to root_path
  end
end
