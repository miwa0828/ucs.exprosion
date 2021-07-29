class HomesController < ApplicationController
  
  def top
    @shop = Shop.page(params[:page]).reverse_order
    @post = Post.order(created_at: :desc).limit(5)
  end

  def about
  end
end