class DmarcacaosController < ApplicationController
  before_action :set_dmarcacao, only: %i[show edit update destroy]

  # GET /dmarcacaos
  # GET /dmarcacaos.json
  def index
    @dmarcacaos = Dmarcacao.all
    render json: @dmarcacaos
  end

  # GET /dmarcacaos/1
  # GET /dmarcacaos/1.json
  def show; end

  # GET /dmarcacaos/new
  def new
    @dmarcacao = Dmarcacao.new
  end

  # GET /dmarcacaos/1/edit
  def edit; end

  # POST /dmarcacaos
  # POST /dmarcacaos.json
  def create
    @dmarcacao = Dmarcacao.create(dmarcacao_params)

    pp @dmarcacao.valid?
  end

  # PATCH/PUT /dmarcacaos/1
  # PATCH/PUT /dmarcacaos/1.json
  def update
    if @dmarcacao.update(dmarcacao_params)
      render json: @dmarcacao
    else
      format.json { render json: @dmarcacao.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /dmarcacaos/1
  # DELETE /dmarcacaos/1.json
  def destroy
    @dmarcacao.destroy
    respond_to do |format|
      format.html { redirect_to dmarcacaos_url, notice: 'Dmarcacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dmarcacao
    @dmarcacao = Dmarcacao.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dmarcacao_params
    params.require(:dmarcacao).permit(:cliente_id, :start, :end)
  end
end
