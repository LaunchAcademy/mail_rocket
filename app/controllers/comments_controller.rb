class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    if @comment.save
      flash[:notice] = 'Comment saved successfully.'
      redirect_to post_path(@post)
    else
      @post.comments.delete(@comment)
      flash[:notice] = 'Comment could not be saved.'
      render 'posts/show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
