class StationController < ApplicationController
  def index
	@sname = "КОП АВТОДОРСТРОЙ"
	@stations = Station.all
  end

  def create
  end

  def edit
  end

  def delete
  end
end
