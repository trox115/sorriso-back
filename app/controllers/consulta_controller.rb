class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[show edit update destroy]

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consulta.all
    render json: @consulta
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
    @consultum = Consulta.new(consultum_params)

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to @consultum, notice: 'Consultum was successfully created.' }
        format.json { render :show, status: :created, location: @consultum }
      else
        format.html { render :new }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
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

  # Only allow a list of trusted parameters through.
  def consultum_params
    params.require(:consultum).permit(:cliente_id, :servico_id, :pagamento, :obs)
  end
end
