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
    
  end

  def edit
    @repforedit = Report.where(changetime: params[:time], station: params[:station])
  end

  def search
    @repdate= Report.where(changetime: params[:time])
  end

  def choiceedit
  end

  def update
  end

  def create
    @station = Station.all
    @sts = @stats

  	@report = Report.new(master_params)
      if @report.save
        #sesion[:user_id] = @user.id
        render "ok"
      else
        render "users/err"
      end
  end

  def destroy
    @delreport = Report.find(params[:id])
    @delreport.destroy
    redirect_to reportnew_path
  end

  def info
  end

  private
  def master_params
    params.require(:report).permit(
      :station, 
      :f95, 
      :f92,         
      :f80,              
      :fdt,              
      :fgaz,               
      :magazine, 
      :vipcardonstock,     
      :vipcardtreid,  
      :discountonstock,    
      :discounttreid,      
      :carwasher,  
      :allinstation, 
      :changetime)
  end 
  
  
end