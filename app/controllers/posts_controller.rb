class PostsController < ApplicationController
  before_action :authenticate_user!
  
  
  def index
    @post = Post.all
    @random = Post.order("RAND()").limit(1)
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

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to action: :show
    else
      render :edit
    end

  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image, :jenre_id).merge(user_id: current_user.id)
  end
end
