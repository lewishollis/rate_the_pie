class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.cake
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :cake_id, :content)
  end
end
