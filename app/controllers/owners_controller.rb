class OwnersController < ApplicationController
  #before_action :correct_user, only: [:edit, :update]
  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    redirect_to new_shop_path
  end

  private

    def owner_params
      params.require(:owner).permit(:name, :email, :password,:password_confirmation)
    end
end
