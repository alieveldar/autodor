class RoadListController < ApplicationController
  def index
    @lists = Road_list.all
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
