class OrcamentoDetailsController < ApplicationController
  before_action :set_orcamento_detail, only: %i[ show edit update destroy ]

  # GET /orcamento_details or /orcamento_details.json
  def index
    @orcamento_details = OrcamentoDetail.all
  end

  # GET /orcamento_details/1 or /orcamento_details/1.json
  def show
  end

  # GET /orcamento_details/new
  def new
    @orcamento_detail = OrcamentoDetail.new
  end

  # GET /orcamento_details/1/edit
  def edit
  end

  def orcamento_id
    orcamento = OrcamentoDetail.where(orcamento_id: params[:id])
    orc = []
    total = 0;
    cliente = ''
    orcamento.each do |x|
      pp x
      servico = Servico.find(x.servico_id)
      dente = Dente.find(x.dente_id)
      orca2 = Orcamento.find(x.orcamento_id)
      cliente = Cliente.find(orca2.cliente_id)
      payload = {servico: servico.nome, custo: servico.custo, dente:dente.nome }
      total+=servico.custo
      orc.push(payload)
    end
    
    render json: {itens:orc, cliente:cliente, total: total }
  end

  # POST /orcamento_details or /orcamento_details.json
  def create
    @orcamento_detail = OrcamentoDetail.new(orcamento_detail_params)
      if @orcamento_detail.save
        render json: @orcamento_detail
      else
        render json: @orcamento_detail.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /orcamento_details/1 or /orcamento_details/1.json
  def update
    respond_to do |format|
      if @orcamento_detail.update(orcamento_detail_params)
        format.json { render :show, status: :ok, location: @orcamento_detail }
      else
        format.json { render json: @orcamento_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamento_details/1 or /orcamento_details/1.json
  def destroy
    @orcamento_detail.destroy
    respond_to do |format|
      format.html { redirect_to orcamento_details_url, notice: "Orcamento detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_detail
      @orcamento_detail = OrcamentoDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orcamento_detail_params
      params.permit(:orcamento_id, :servico_id, :dente_id)
    end
end
