class OwnersController < ApplicationController
  #before_action :current_owner, only: [:edit, :update]
  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    sign_in(@owner, bypass: true)
    redirect_to shops_path
  end

  private

    def owner_params
      params.require(:owner).permit(:name, :email, :password,:password_confirmation)
    end
end
