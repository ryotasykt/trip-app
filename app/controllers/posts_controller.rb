class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @post = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :image, :description, :member_id, :transportation_id, :satisfaction_level_id, :prefecture_id).merge(user_id: current_user.id)
  end
end
