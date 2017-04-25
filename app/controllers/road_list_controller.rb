class RoadListController < ApplicationController
  def index
    @lists = RoadList.all
    @dateforchoose 
  end

  def new
    @month = (params[:month])
    @days = ((params[:days]).split(' '))
    @year = (params[:year])
    
    
    @days = @days.map(&:to_i).reject{ |x|  (x > 31 || x < 0) }.map{ |x| @year + ',' + @month + ',' + (x).to_s}
    @startodometr = (params[:startodometr]).to_i #первоначальные стартовые километры одометра
    @startfuellitres = (params[:startfuellitres]).to_i #первоначальные литры
    #d.end_of_month
    @daycount = @days.length
    @excludeddates = Array.new
    @excludeddates 
    
    #@excludeddates.map!{ |x| x.to_i}

    
  end

  def create
  end

  def delete
  end

  def print
  end

  def download
  end
    
    
  
end
