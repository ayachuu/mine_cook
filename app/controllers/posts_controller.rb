class PostsController < ApplicationController
  before_action :authenticate_user!
  
  
  def index
    @post = Post.all
    @random = Post.order("RAND()").limit(1)
  end
end
