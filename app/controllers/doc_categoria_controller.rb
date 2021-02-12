class DocCategoriaController < ApplicationController
  before_action :set_doc_categorium, only: [:show, :edit, :update, :destroy]

  # GET /doc_categoria
  # GET /doc_categoria.json
  def index
    @doc_categoria = DocCategoria.all
    pp @doc_categoria
    render json: @doc_categoria
  end

  # GET /doc_categoria/1
  # GET /doc_categoria/1.json
  def show
  end

  # GET /doc_categoria/new
  def new
    @doc_categorium = DocCategorium.new
  end

  # GET /doc_categoria/1/edit
  def edit
  end

  # POST /doc_categoria
  # POST /doc_categoria.json
  def create
    @doc_categorium = DocCategorium.new(doc_categorium_params)

    respond_to do |format|
      if @doc_categorium.save
        format.html { redirect_to @doc_categorium, notice: 'Doc categorium was successfully created.' }
        format.json { render :show, status: :created, location: @doc_categorium }
      else
        format.html { render :new }
        format.json { render json: @doc_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_categoria/1
  # PATCH/PUT /doc_categoria/1.json
  def update
    respond_to do |format|
      if @doc_categorium.update(doc_categorium_params)
        format.html { redirect_to @doc_categorium, notice: 'Doc categorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_categorium }
      else
        format.html { render :edit }
        format.json { render json: @doc_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_categoria/1
  # DELETE /doc_categoria/1.json
  def destroy
    @doc_categorium.destroy
    respond_to do |format|
      format.html { redirect_to doc_categoria_url, notice: 'Doc categorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_categorium
      @doc_categorium = DocCategorium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doc_categorium_params
      params.require(:doc_categorium).permit(:nome)
    end
end
