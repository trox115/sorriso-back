class ConsultaDetailsController < ApplicationController
  before_action :set_consulta_detail, only: %i[ show edit update destroy ]

  # GET /consulta_details or /consulta_details.json
  def index
    @consulta_details = ConsultaDetail.all
  end

  # GET /consulta_details/1 or /consulta_details/1.json
  def show
  end

  # GET /consulta_details/new
  def new
    @consulta_detail = ConsultaDetail.new
  end

  # GET /consulta_details/1/edit
  def edit
  end

  # POST /consulta_details or /consulta_details.json
  def create
    @consulta_detail = ConsultaDetail.new(consulta_detail_params)
      if @consulta_detail.save
        render json: 'done'
      else
        format.json { render json: @consulta_detail.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /consulta_details/1 or /consulta_details/1.json
  def update
    respond_to do |format|
      if @consulta_detail.update(consulta_detail_params)
        format.html { redirect_to @consulta_detail, notice: "Consulta detail was successfully updated." }
        format.json { render :show, status: :ok, location: @consulta_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consulta_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta_details/1 or /consulta_details/1.json
  def destroy
    @consulta_detail.destroy
    respond_to do |format|
      format.html { redirect_to consulta_details_url, notice: "Consulta detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta_detail
      @consulta_detail = ConsultaDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consulta_detail_params
      params.require(:consulta_detail).permit(:tratamento_id, :consulta_id, :servico_id)
    end
end
