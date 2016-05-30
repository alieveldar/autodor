class SessionsController < ApplicationController
	def index
		@users = User.all
	end
	def new

  	end 

  def create
    puts params[:id]
    user = User.find_by(params[:session][:id])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      redirect_to login_url
    end 
  end 

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end 

end
