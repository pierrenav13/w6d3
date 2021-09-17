class CommentsController < ApplicationController

  def index
    # we want index to handle :user_id
    # or handle :artwork_id from our comment_params
    # if present, handle index accordingly for output
    if params[:user_id]
      @comments = Comment.where("comments.user_id = #{params[:user_id]}")
      # could have also done ("comments.user_id = ?", params[:id])
    elsif params[:artwork_id]
      @comments = Comment.where("comments.artwork_id = #{params[:artwork_id]}")
    else
      @comments = Comment.all
    end

    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment
    else
      render json: @comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to comments_url
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :artwork_id, :body)
  end
end