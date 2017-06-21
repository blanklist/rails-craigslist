class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @category = Category.find(params[:category_id])
    @post = Post.new
  end

  def edit
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.create(post_params)
    
    redirect_to category_path(@category)
  end

  def update
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
    @post.update(post_params)
    redirect_to category_path(@category)
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:username, :title, :description, :price)
    end
end
