class PostsController < ApplicationController
    def show
     @post = Post.find(params[:id])
    end

  private
    def post_params
      params.require(:post).permit(:image, :title, :detail)
    end
end