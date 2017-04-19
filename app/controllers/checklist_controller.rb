class ChecklistController < ApplicationController
  def index
  	@stations = Station.all
  	@count = 1
  end

  def new
  end
end
