class HomesController < ApplicationController
  def top
    @shop = Shop.all
    @post = Post.all
  end

  def about
  end
end