  class PostsController < ApplicationController
    before_action :authenticate_owner!, except: [:index, :show]
    def index
      @posts = Post.page(params[:page]).reverse_order
    end

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
      @post = Post.new(post_params)
      @post.owner_id = current_owner.id
     if @post.save
      redirect_to shops_path
     else
      render :new
     end
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
      params.require(:post).permit(:image, :title, :detail, :name)
    end
  end