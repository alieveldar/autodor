class RoadListController < ApplicationController
  def index
    
  end

  def new
=begin
    @month = (params[:month])
    @days = ((params[:days]).split(' '))
    @year = (params[:year])
    
    @lastmonthday = (@year + '-' + @month + '-' + '1') 
    @lastmonthday = Date.strptime(@lastmonthday, '%Y-%m-%d')
    @lastmonthday = @lastmonthday.end_of_month
    @lastmonthday = @lastmonthday.day
    @days = @days.map(&:to_i).reject{ |x|  (x > @lastmonthday || x < 0) }
    @days = @days.map{ |x| Date.strptime((@year + '-' + @month + '-' + x.to_s), '%Y-%m-%d')}
    @startodometr = (params[:startodometr]).to_i #первоначальные стартовые километры одометра
    @startfuellitres = (params[:startfuellitres]).to_i #первоначальные литры
    @daycount = @days.length
    @excludeddates = Array.new(size = @daycount, obj = nil) 
    @excludeddates = @days #исключительные дни

    @month = (params[:month])
    @days = ((params[:days]).split(' '))
    @year = (params[:year])
    @startfuellitres = (params[:startfuellitres])
    @startodometr = (params[:startodometr])
    @winter = 8
    @summer = 7
    @year = year
    @month = month
    @excludedays = days
    @startodometr = startodometr
    @check_startodometr = check_startodometr
    @startfuellitres = startfuellitres
    @check_startfuellitres = check_startfuellitres
    
    сделай класс с полями равными полям бд

=end
    

    
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
