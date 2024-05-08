class UsersController < ApplicationController
  layout :layout_by_domain

  def show
    @user = User.find(params[:id])
  end
end
