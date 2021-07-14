class PostsController < ApplicationController
    def show
      @post = Post.find(params[:id])
    end
      
    def new
      @post = Post.new
    end
    
    def create
      post = Post.new(post_params)
      post = current_owner.id
      post.save
      redirect_to shops_path
    end
  private
    def post_params
      params.require(:post).permit(:image, :title, :detail)
    end
end