class ApplicationController < ActionController::Base
  protect_from_forgery

  include ApplicationHelper

  def create_user(user)
    @user = user

    if @user.save
      login(user)
      redirect_to @user
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
end