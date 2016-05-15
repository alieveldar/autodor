class StationController < ApplicationController
  def index
	@sname = "КОП АВТОДОРСТРОЙ"
	@stations = Station.all
  end
  def new
    @station = Station.new
  end
  def create
     @station = Station.new(station_params)
      if @station.save
        #sesion[:user_id] = @user.id
        redirect_to root_url
      else
        redirect_to root_url
      end
  end
   def station_params
    params.require(:station).permit(:name, :master)
  end 

  def edit
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to root_url
  end
  
end
