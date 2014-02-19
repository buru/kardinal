class UsersController < ApplicationController
  before_filter :require_logged_in

  def show
    @user = User.find(params[:id])
                .includes(:contact_details, :signed_petitions, petitions: :victory)
    @contact_detail = @user.contact_details.first
  end

  def me
    @user = current_user
    @contact_detail = @user.contact_details.first
  end

  def edit
    @user = current_user
    @contact_detail = @user.contact_details.first
  end

  def update
    @user = current_user
    @contact_detail = @user.contact_details.first

    if @user.update_attributes(params[:user]) &&
      @contact_detail.update_attributes(params[:contact_details])
      flash[:notices] = "Your profile was successfully updated!"
      redirect_to me_url
    else
      render :edit
    end
  end
end
