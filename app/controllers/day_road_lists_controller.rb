class DayRoadListsController < ApplicationController
  before_action :set_day_road_list, only: [:show, :edit, :update, :destroy]

  # GET /day_road_lists
  # GET /day_road_lists.json
  def index
    @day_road_lists = DayRoadList.all
  end


  # GET /day_road_lists/1
  # GET /day_road_lists/1.json
  def show
    @day_road_lists = DayRoadList.all
  end

  # GET /day_road_lists/new
  def new
    @day_road_list = DayRoadList.new
  end

  # GET /day_road_lists/1/edit
  def edit
  end

  # POST /day_road_lists
  # POST /day_road_lists.json
  def create
    
    @day_road_list = DayRoadList.new(day_road_list_params)

    respond_to do |format|
      if @day_road_list.save
        format.html { redirect_to @day_road_list, notice: 'Day road list was successfully created.' }
        format.json { render :show, status: :created, location: @day_road_list }
      else
        format.html { render :new }
        format.json { render json: @day_road_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_road_lists/1
  # PATCH/PUT /day_road_lists/1.json
  def update
    respond_to do |format|
      if @day_road_list.update(day_road_list_params)
        format.html { redirect_to @day_road_list, notice: 'Day road list was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_road_list }
      else
        format.html { render :edit }
        format.json { render json: @day_road_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_road_lists/1
  # DELETE /day_road_lists/1.json
  def destroy
    @day_road_list.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to day_road_lists_url, notice: 'Day road list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_road_list
    @day_road_list = DayRoadList.find(params[:id])
    @day_road_list = DayRoadList.all

  
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_road_list_params
      params.require(:day_road_list).permit(:day, :fuel, :station)
    end
end
