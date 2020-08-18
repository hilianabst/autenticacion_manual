class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
      @user = User.create(users_params)
      if @user.save 
        session[:user_id] = @user.id 
        redirect_to root_path, :notice => "Bienvenido"
      else
        render "new"
      end
  end

  def show
  end

  private
  
  def users_params
    params.require(:user).permit(:name,:email,:password, :password_confirmation)
  end

end
