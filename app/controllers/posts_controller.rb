class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_q, only: [:index, :search_genre]
  before_action :make_instance, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
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

  def show
  end

  def edit
  end
  
  def update
    if @post.update(post_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @post.destroy
  end
  def list_up
    @post = Post.all
  end

  def search_genre
    @results = @p.result.includes(params[:id])
  end
  private

  def post_params
    params.require(:post).permit(:title, :text, :image, :genre_id).merge(user_id: current_user.id)
  end

  def set_q
    @p = Post.ransack(params[:q])
  end

  def make_instance
    @post = Post.find(params[:id])
  end
end
