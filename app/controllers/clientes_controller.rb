class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[show edit update destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    users = Cliente.all
    render json: users
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show; end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit; end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      format.json { render :show, status: :created, location: @cliente }
    else
      format.json { render json: @cliente.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    if @cliente.update(cliente_params)
      render json: @cliente
    else
      format.json { render json: @cliente.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cliente_params
    params.require(:cliente).permit(:nome, :bi, :nif, :utente, :telefone, :email, :seguro, :numSeguro, :morada, :observacoes, :dataNascimento)
  end
end
