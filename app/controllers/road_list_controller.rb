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
    
     
    @days.each do |day| {
      if day >= 31
        a = ((@year) + "-" + (@month) + "-" (day))
        @excludeddates << a
      else
        puts "OK"
      end
        }
  end

  def delete
  end

  def print
  end

  def download
  end
end
