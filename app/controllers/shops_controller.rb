class ShopsController < ApplicationController
  before_action :authenticate_owner!, except: [:show, :search]

  def index
    @shop = current_owner.shops.page(params[:page]).reverse_order
    @post = current_owner.posts.page(params[:page]).reverse_order
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.owner_id = current_owner.id
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end

  def update
    shop = current_owner.shops.find(params[:id])
    shop.update(shop_params)
    redirect_to shops_path
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path
  end

  def search
    @shops = Shop.search(params[:keyword])
    @keyword = params[:keyword]
    render "search/index"
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :detail, :address, :open_time, :close_time, :phone_number, :image, :url)
  end
end
