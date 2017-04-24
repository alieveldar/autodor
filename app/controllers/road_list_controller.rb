class RoadListController < ApplicationController
  def index
    @lists = RoadList.all
    @dateforchoose 
  end

  def new
    @month = (params[:month])
    @days = ((params[:days]).split(' '))
    @year = (params[:year])
    @daycount = @days.length
    @excludeddates = Array.new
    @days = @days.map(&:to_i).reject{ |x|  (x > 31 || x < 0) }.map{ |x| @year + ',' + @month + ',' + (x).to_s}
  
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
