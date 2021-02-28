class OrcamentosController < ApplicationController
  before_action :set_orcamento, only: %i[show edit update destroy]

  # GET /orcamentos
  # GET /orcamentos.json
  def index
    @orcamentos = Orcamento.all
    orca = []
    @orcamentos.each do |x|
      cliente = Cliente.find(x.cliente_id)
      data = x.created_at
      id = x.id
      object = { id: id, data: data, cliente: cliente }
      orca.push(object)
    end
    render json: orca
  end

  # GET /orcamentos/1
  # GET /orcamentos/1.json
  def show; end

  # GET /orcamentos/new
  def new
    @orcamento = Orcamento.new
  end

  # GET /orcamentos/1/edit
  def edit; end

  # POST /orcamentos
  # POST /orcamentos.json
  def create
    servicoId = Servico.first
    @orcamento = Orcamento.new(cliente_id: orcamento_params[:cliente_id], servico_id: servicoId.id)
    params = JSON.parse(orcamento_params[:detalhes].to_json)
    pp params
    if @orcamento.save
      
      params.each do |x|
        OrcamentoDetail.create(orcamento_id: @orcamento.id, dente_id: x['dente_id'], servico_id: x['servico_id'])
        tratamento = Tratamento.create!(dente_id: x['dente_id'], estado:'Mau', cliente_id: orcamento_params[:cliente_id])
      end
      render json: @orcamento
    else
      render json: @orcamento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orcamentos/1
  # PATCH/PUT /orcamentos/1.json
  def update
    if @orcamento.update(orcamento_params)
      render json: @orcamento
    else
      render json: @orcamento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orcamentos/1
  # DELETE /orcamentos/1.json
  def destroy
    @orcamento.destroy
    respond_to do |format|
      format.html { redirect_to orcamentos_url, notice: 'Orcamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_orcamento
    @orcamento = Orcamento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def orcamento_params
    params.require(:orcamento).permit(:cliente_id, :servico_id, detalhes: %i[servico_id dente_id])
  end
end
