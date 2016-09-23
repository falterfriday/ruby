class UsersController < ApplicationController
  def index
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully created"
      redirect_to action: 'index'
    else
      #errors
    end
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
