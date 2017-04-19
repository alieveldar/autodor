class ChecklistController < ApplicationController
  def index
  	@stations = Station.all
  end

  def new
  end
end
