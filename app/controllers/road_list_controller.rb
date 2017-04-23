class RoadListController < ApplicationController
  def index
    @lists = RoadList.all
    @dateforchoose 
  end

  def new
  end

  def delete
  end

  def print
  end

  def download
  end
end
