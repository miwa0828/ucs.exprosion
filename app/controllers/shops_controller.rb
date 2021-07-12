class ShopsController < ApplicationController
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

  def create
    shop = Shop.new(shop_params)
    shop.owner_id = current_owner.id
    shop.save
    redirect_to shops_path
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :detail, :address, :phone_number, :image, :url)
  end
end
