class ShopsController < ApplicationController
  before_action :authenticate_owner!, except: [:show]

  def index
    @shop = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @post = Post.all
  end

  def new
    @shop = Shop.new
  end

  def edit
    @shop = Shop.find_by(owner_id: params[:id])
  end

  def create
    shop = Shop.new(shop_params)
    shop.owner_id = current_owner.id
    shop.save
    redirect_to shops_path
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to shops_path
  end
  private
  def shop_params
    params.require(:shop).permit(:name, :detail, :address, :phone_number, :image, :url)
  end
end
