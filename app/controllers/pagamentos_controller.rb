class PagamentosController < ApplicationController
  before_action :set_pagamento, only: %i[show edit update destroy]

  # GET /pagamentos
  # GET /pagamentos.json
  def index
    @pagamentos = Pagamento.all
  end

  # GET /pagamentos/1
  # GET /pagamentos/1.json
  def show; end

  # GET /pagamentos/new
  def new
    @pagamento = Pagamento.new
  end

  # GET /pagamentos/1/edit
  def edit; end

  # POST /pagamentos
  # POST /pagamentos.json
  def create
    @pagamento = Pagamento.new(pagamento_params)
    if @pagamento.save
      render json: @pagamento
    else
      format.json { render json: @pagamento.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /pagamentos/1
  # PATCH/PUT /pagamentos/1.json
  def update
    respond_to do |format|
      if @pagamento.update(pagamento_params)
        format.html { redirect_to @pagamento, notice: 'Pagamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagamento }
      else
        format.html { render :edit }
        format.json { render json: @pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagamentos/1
  # DELETE /pagamentos/1.json
  def destroy
    @pagamento.destroy
    respond_to do |format|
      format.html { redirect_to pagamentos_url, notice: 'Pagamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pagamento
    @pagamento = Pagamento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pagamento_params
    params.require(:pagamento).permit(:cliente_id, :consulta_id, :metodo, :valor, :troco)
  end
end
