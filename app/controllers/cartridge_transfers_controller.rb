class CartridgeTransfersController < ApplicationController
  before_action :set_cartridge_transfer, only: [:show, :edit, :update, :destroy]

  # GET /cartridge_transfers
  # GET /cartridge_transfers.json
  def index
    @cartridge_transfers = CartridgeTransfer.all
  end

  # GET /cartridge_transfers/1
  # GET /cartridge_transfers/1.json
  def show
  end

  # GET /cartridge_transfers/new
  def new
    @cartridge_transfer = CartridgeTransfer.new
  end

  # GET /cartridge_transfers/1/edit
  def edit
  end

  # POST /cartridge_transfers
  # POST /cartridge_transfers.json
  def create
    @cartridge_transfer = CartridgeTransfer.new(cartridge_transfer_params)

    respond_to do |format|
      if @cartridge_transfer.save
        format.html { redirect_to @cartridge_transfer, notice: 'Cartridge transfer was successfully created.' }
        format.json { render :show, status: :created, location: @cartridge_transfer }
      else
        format.html { render :new }
        format.json { render json: @cartridge_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartridge_transfers/1
  # PATCH/PUT /cartridge_transfers/1.json
  def update
    respond_to do |format|
      if @cartridge_transfer.update(cartridge_transfer_params)
        format.html { redirect_to @cartridge_transfer, notice: 'Cartridge transfer was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartridge_transfer }
      else
        format.html { render :edit }
        format.json { render json: @cartridge_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartridge_transfers/1
  # DELETE /cartridge_transfers/1.json
  def destroy
    @cartridge_transfer.destroy
    respond_to do |format|
      format.html { redirect_to cartridge_transfers_url, notice: 'Cartridge transfer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartridge_transfer
      @cartridge_transfer = CartridgeTransfer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartridge_transfer_params
      params.require(:cartridge_transfer).permit(:model, :count, :date, :department, :person_out, :person_in)
    end
end
