class TratamentosController < ApplicationController
  before_action :set_tratamento, only: %i[show edit update destroy]

  # GET /tratamentos
  # GET /tratamentos.json
  def index
    @tratamentos = Tratamento.all
    render json: @tratamentos
  end

  # GET /tratamentos/1
  # GET /tratamentos/1.json
  def show; end

  # GET /tratamentos/new
  def new
    @tratamento = Tratamento.new
  end

  # GET /tratamentos/1/edit
  def edit; end

  def byUser
    @tratamentosUser = Tratamento.where(cliente_id: params[:id])
    render json: @tratamentosUser
  end

  # POST /tratamentos
  # POST /tratamentos.json
  def create
    @tratamento = Tratamento.new(tratamento_params)

      if @tratamento.save
        render json: @tratamento
      else
        format.html { render :new }
        format.json { render json: @tratamento.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /tratamentos/1
  # PATCH/PUT /tratamentos/1.json
  def update
    if @tratamento.update(tratamento_params)
      render json: @tratamento
    else
      format.html { render :edit }
      format.json { render json: @tratamento.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /tratamentos/1
  # DELETE /tratamentos/1.json
  def destroy
    @tratamento.destroy
    respond_to do |format|
      format.html { redirect_to tratamentos_url, notice: 'Tratamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tratamento
    @tratamento = Tratamento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tratamento_params
    params.require(:tratamento).permit(:dente_id, :cliente_id, :estado)
  end
end
