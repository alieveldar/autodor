class CartridgeSuppliesController < ApplicationController
  before_action :set_cartridge_supply, only: [:show, :edit, :update, :destroy]

  # GET /cartridge_supplies
  # GET /cartridge_supplies.json
  def index
    @cartridge_supplies = CartridgeSupply.all
  end

  # GET /cartridge_supplies/1
  # GET /cartridge_supplies/1.json
  def show
  end

  # GET /cartridge_supplies/new
  def new
    @cartridge_supply = CartridgeSupply.new
  end

  # GET /cartridge_supplies/1/edit
  def edit
  end

  # POST /cartridge_supplies
  # POST /cartridge_supplies.json
  def create
    @cartridge_supply = CartridgeSupply.new(cartridge_supply_params)

    respond_to do |format|
      if @cartridge_supply.save
        format.html { redirect_to @cartridge_supply, notice: 'Cartridge supply was successfully created.' }
        format.json { render :show, status: :created, location: @cartridge_supply }
      else
        format.html { render :new }
        format.json { render json: @cartridge_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartridge_supplies/1
  # PATCH/PUT /cartridge_supplies/1.json
  def update
    respond_to do |format|
      if @cartridge_supply.update(cartridge_supply_params)
        format.html { redirect_to @cartridge_supply, notice: 'Cartridge supply was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartridge_supply }
      else
        format.html { render :edit }
        format.json { render json: @cartridge_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartridge_supplies/1
  # DELETE /cartridge_supplies/1.json
  def destroy
    @cartridge_supply.destroy
    respond_to do |format|
      format.html { redirect_to cartridge_supplies_url, notice: 'Cartridge supply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartridge_supply
      @cartridge_supply = CartridgeSupply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartridge_supply_params
      params.require(:cartridge_supply).permit(:model, :count, :state, :date, :service)
    end
end
