class DentesController < ApplicationController
  before_action :set_dente, only: [:show, :edit, :update, :destroy]

  # GET /dentes
  # GET /dentes.json
  def index
    @dentes = Dente.all
    render json: @dentes
  end

  # GET /dentes/1
  # GET /dentes/1.json
  def show
  end

  # GET /dentes/new
  def new
    @dente = Dente.new
  end

  # GET /dentes/1/edit
  def edit
  end

  # POST /dentes
  # POST /dentes.json
  def create
    @dente = Dente.new(dente_params)

    respond_to do |format|
      if @dente.save
        format.html { redirect_to @dente, notice: 'Dente was successfully created.' }
        format.json { render :show, status: :created, location: @dente }
      else
        format.html { render :new }
        format.json { render json: @dente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dentes/1
  # PATCH/PUT /dentes/1.json
  def update
    respond_to do |format|
      if @dente.update(dente_params)
        format.html { redirect_to @dente, notice: 'Dente was successfully updated.' }
        format.json { render :show, status: :ok, location: @dente }
      else
        format.html { render :edit }
        format.json { render json: @dente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dentes/1
  # DELETE /dentes/1.json
  def destroy
    @dente.destroy
    respond_to do |format|
      format.html { redirect_to dentes_url, notice: 'Dente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dente
      @dente = Dente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dente_params
      params.require(:dente).permit(:nome)
    end
end
