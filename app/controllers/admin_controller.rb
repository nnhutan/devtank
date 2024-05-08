# frozen_string_literal: true

# AdminController
class AdminController < ApplicationController
  include Pagy::Backend
  layout 'admin'

  before_action :authenticate_user!
  before_action :authorize_admin!

  private

  def authorize_admin!
    return if current_user.admin?

    flash[:error] = 'You must be an admin to do that.'
    redirect_to root_path
  end
end
