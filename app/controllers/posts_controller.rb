  class PostsController < ApplicationController
    def show
      @post = Post.find(params[:id])
    end

    def new
      @post = Post.new
    end

    def edit
      @post = Post.find(params[:id])
    end

    def create
      post = Post.new(post_params)
      post.owner_id = current_owner.id
      post.save
      redirect_to shops_path
    end

    def update
      post = Shop.find(params[:id])
      post.update(post_params)
      redirect_to shops_path
    end

  private
    def post_params
      params.require(:post).permit(:image, :title, :detail)
    end
  end