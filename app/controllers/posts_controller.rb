class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

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

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def update
    if @post.user_id == current_user.id
      if @post.update(post_params)
        redirect_to post_path(@post.id)
      else
        render :edit
      end
    else
      render :show
    end
  end

  def destroy
    if @post.user_id == current_user.id
      if @post.destroy
        redirect_to root_path
      else
        render :show
      end
    else
      render :show
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :image, :description, :member_id, :transportation_id, :satisfaction_level_id, :prefecture_id).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
