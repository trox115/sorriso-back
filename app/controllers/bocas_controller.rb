class BocasController < ApplicationController
  before_action :set_boca, only: %i[ show edit update destroy ]

  # GET /bocas or /bocas.json
  def index
    @bocas = Boca.all
  end

  # GET /bocas/1 or /bocas/1.json
  def show
  end

  # GET /bocas/new
  def new
    @boca = Boca.new
  end

  # GET /bocas/1/edit
  def edit
  end

  # POST /bocas or /bocas.json
  def create
    @boca = Boca.new(boca_params)

    respond_to do |format|
      if @boca.save
        format.html { redirect_to @boca, notice: "Boca was successfully created." }
        format.json { render :show, status: :created, location: @boca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bocas/1 or /bocas/1.json
  def update
    respond_to do |format|
      if @boca.update(boca_params)
        format.html { redirect_to @boca, notice: "Boca was successfully updated." }
        format.json { render :show, status: :ok, location: @boca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bocas/1 or /bocas/1.json
  def destroy
    @boca.destroy
    respond_to do |format|
      format.html { redirect_to bocas_url, notice: "Boca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boca
      @boca = Boca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boca_params
      params.require(:boca).permit(:cliente_id, :servico_id)
    end
end
