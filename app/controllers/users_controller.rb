class UsersController < ApplicationController


  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :profile, :occupation, :position)
  end



end
