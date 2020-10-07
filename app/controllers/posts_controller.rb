class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  private

  def post_params
    params.require(:post).permit(:name, :image, :description, :member_id, :transportation_id, :satisfaction_level_id, :prefecture_id).merge(user_id: current_user.id)
  end

end
