class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    # binding.pry
    redirect_to post_path(comment.post_id)  # コメントと結びつくツイートの詳細画面に遷移する
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
