class UsersController < ApplicationController

	def new
    @user = User.new
  	end 

  	def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_url
      else
        render 'err'
    end
  end 

   private 

  def user_params
    params.require(:user).permit(:name, :login, :password, :password_confirmation, :role, :managestations)
  end 

  

end
