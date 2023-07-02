class Admin::UsersController < AdminController
  def index
    @pagy, @users = pagy(User.all)
  end
end
