class ReportsController < ApplicationController

  def index
	@reports = Report.all
  @stats
  @stat = 0
  
  end
  def new
    
   
   @station=Station.all
  	@report = Report.new
  	
  end

  def show
    @date
  end

  def edit
    @report= Report.all

  end

  def create
    @station = Station.all
    @sts = @stats

  	@report = Report.new(master_params)
      if @report.save
        #sesion[:user_id] = @user.id
        render "ok"
      else
        redirect_to :back
      end
  end
  private
  def master_params
    params.require(:report).permit(:station, :f95, :f92,         
  :f80,              
  :fdt,              
  :fgaz,               
 :magazine, 
  :vipcardonstock,     
:vipcardtreid,  :discountonstock,    :discounttreid,      :carwasher,  :allinstation, :time)
  end 
  def search
    @reporting=Report.all
end
end