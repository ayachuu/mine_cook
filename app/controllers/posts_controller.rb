class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_q, only: [:index, :search_genre]
  
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

  def show
    @post = Post.find(params[:id])
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

end
