class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comment.user_id = session[:user_id]
    @comment.topic_id = params[:topic_id]
  end

  def create
    #binding.pry
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to topics_path, success: "コメントに成功しました"
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end
  end



  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :topic_id)
  end
end
