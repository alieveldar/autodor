class StationsController < ApplicationController
  def index
	@sname = "КОП АВТОДОРСТРОЙ"
	@stations = Station.all
  end
  def new
    @station = Station.new
  end
  def create
     @station = Station.new(user_params)
      if @station.save
        #sesion[:user_id] = @user.id
        redirect_to root_url
      else
        redirect_to root_url
      end
  end
  
  
  def show
  end
  def edit
  end

  def destroy
    @statione = Station.find(params[:id])
    @statione.destroy
    redirect_to root_url
  end
  private
  def user_params
    params.require(:station).permit(:name, :master)
  end 
end
