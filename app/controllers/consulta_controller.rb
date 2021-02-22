class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[show edit update destroy]

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consulta.all
    consulta = []
    pagamento = 0;
    @consulta.each do |x|
     cliente = Cliente.find(x.cliente_id)
     tratamentos1 = ConsultaDetail.where(consulta_id: x.id)
     tratamentos = []
     custo = 0
     tratamentos1.each do |x|
      t = Tratamento.find(x.tratamento_id)
      dente = Dente.find(t.dente_id)
      servico = Servico.find(x.servico_id)
      tratamentos.push({dente:dente.nome, obs:t.obs, servico:{nome:servico.nome, custo:servico.custo}})
      custo += servico.custo
     end
     pagamentos = Pagamento.where(consulta_id: x.id)
     pp pagamentos
     pagamento = pagamentos.inject(0){|sum,x| sum.to_i + x.valor }
     consulta.push({id: x.id, cliente: cliente, tratamentos: tratamentos, pagamento: pagamento, custo: custo})
    end

    render json: consulta
  end

  # GET /consulta/1
  # GET /consulta/1.json
  def show; end

  # GET /consulta/new
  def new
    @consultum = Consulta.new
  end

  # GET /consulta/1/edit
  def edit; end

  # POST /consulta
  # POST /consulta.json
  def create
    @consultum = Consulta.new(consulta_params)
      if @consultum.save
        render json: @consultum
      else
        format.html { render :new }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /consulta/1
  # PATCH/PUT /consulta/1.json
  def update
    if @consultum.update(consultum_params)
      render json: @consultum
    else
      format.json { render json: @consultum.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.json
  def destroy
    @consultum.destroy
    respond_to do |format|
      format.html { redirect_to consulta_url, notice: 'Consultum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consultum
    @consultum = Consulta.find(params[:id])
  end

  def consulta_params
    params.permit(:cliente_id, :pagamento, :obs, :image)
  end

  # Only allow a list of trusted parameters through.
  def consultum_params
    params.require(:consultum).permit(:cliente_id, :pagamento, :obs, :image)
  end
end
