class HomesController < ApplicationController
  def top
    @shop = Shop.all
    @post = Post.order(created_at: :desc).limit(10)
  end

  def about
  end
end