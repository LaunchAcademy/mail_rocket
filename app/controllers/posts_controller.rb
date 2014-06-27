class PostsController < ApplicationController
  def index
    @posts = Post.includes(:comments)
      .page(params[:page])
      .order(comments_count: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
end
