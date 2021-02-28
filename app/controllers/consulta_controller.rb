class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[show edit update destroy]

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consulta.all
    consulta = []
    pagamento = 0
    @consulta.each do |x|
      cliente = Cliente.find(x.cliente_id)
      tratamentos1 = ConsultaDetail.where(consulta_id: x.id)
      tratamentos2 = Boca.where(consulta_id: x.id)
      tratamentos = []
      custo = 0
      tratamentos1.each do |x|
        t = Tratamento.find(x.tratamento_id)
        dente = Dente.find(t.dente_id)
        servico = Servico.find(x.servico_id)
        tratamentos.push({ dente: dente.nome, obs: t.obs, servico: { nome: servico.nome, custo: servico.custo } })
        custo += servico.custo.to_i
      end
      pp tratamentos2
      tratamentos2.each do |x|
        servico = Servico.find(x.servico_id)
        pp servico
        tratamentos.push({ obs: x.obs, servico: { nome: servico.nome, custo: servico.custo } })
        custo += servico.custo.to_i
      end

      pagamentos = Pagamento.where(consulta_id: x.id)
      pagamento = pagamentos.inject(0) { |sum, x| sum.to_i + x.valor.to_i }
      consulta.push({ id: x.id, cliente: cliente, tratamentos: tratamentos, pagamento: pagamento, custo: custo })
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
    pp consultum_params
    @consultum = Consulta.new(cliente_id: consultum_params[:cliente_id])
    params = JSON.parse(consultum_params[:denteSelecionado].to_json)
    obs = JSON.parse(consultum_params[:obs].to_json)
    if @consultum.save
      params.each_with_index do |x, i|
        estado = 'bom'
        estado = 'mau' if x['servico_id'] === 2
        tratamento = Tratamento.where(cliente_id: consultum_params[:cliente_id], dente_id: x['id'])
        pp tratamento;
        tratamento = if tratamento.nil?
                       Tratamento.update!(dente_id: x['id'], estado: 'Bom', cliente_id: consultum_params[:cliente_id],
                                          obs: obs[i])
                     else
                       Tratamento.create!(dente_id: x['id'], estado: estado, cliente_id: consultum_params[:cliente_id],
                                          obs: obs[i])
                     end
        ConsultaDetail.create!(tratamento_id: tratamento.id, consulta_id: @consultum.id, servico_id: x['servico'])
        render json: :success
      end
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  def tratamentoBocaToda
    consultum = Consulta.new(cliente_id: boca_toda_params[:cliente_id])
    if consultum.save
      Boca.create(consulta_id: consultum.id, cliente_id: boca_toda_params[:cliente_id],
                  servico_id: boca_toda_params[:servico_id], obs: boca_toda_params[:obs])
    end
  end

  # PATCH/PUT /consulta/1
  # PATCH/PUT /consulta/1.json
  def update
    if @consultum.update(pagamento: consultum_params[:pagamento])
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
    @consulta = Consulta.find(params[:id])
  end

  # def consulta_params
  #   params.permit(:formData, :cliente_id, :pagamento, :obs, :image, denteSelecionado: %i[id tipo nome servico])
  # end

  # Only allow a list of trusted parameters through.
  def consultum_params
    params.require(:consulta).permit(:cliente_id, :pagamento, :image, denteSelecionado: %i[id tipo nome servico],
                                                                      obs: [])
  end

  def boca_toda_params
    params.require(:consulta).permit(:cliente_id, :pagamento, :obs, :servico_id)
  end
end