class SessionsController < ApplicationController
  layout "auth"
	def index
		@users = User.all
	end
	def new

  	end 

  def create
    puts params[:login]
    user = User.where(login:params[:session][:login]).first
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      render 'reports/info' 
    else
      render 'sessions/logerror'
    end 
  end 

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end 

end
