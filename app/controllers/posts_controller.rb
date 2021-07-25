  class PostsController < ApplicationController

    def index
      @posts = Post.all
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
      @posts = Post.new

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
      post = Post.find(params[:id])
      post.update(post_params)
      redirect_to shops_path
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
      redirect_to shops_path
    end

  private
    def post_params
      params.require(:post).permit(:image, :title, :detail)
    end
  end