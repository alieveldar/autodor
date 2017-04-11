class StationsController < ApplicationController
  def index
	   @sname = "КОП АВТОДОРСТРОЙ"
	   @stationes = Station.all
  end

  def new
    @station = Station.new
  end
  
  def create
     @station = Station.new(user_params)
      if @station.save
        #sesion[:user_id] = @user.id
        #redirect_to root_url
         redirect_to stationsindex_path
      else
        #redirect_to root_url
        render 'err'
      end
  end
  
  
  def show
    #@stations = Station.all
  end

  def edit
   # @stations = Station.all
  end

  def destroy
    @statione = Station.find(params[:id])
    @statione.destroy
    redirect_to stationsindex_path
  end
  private
  def user_params
    params.require(:station).permit(:name, :master, :distance)
  end 
end
