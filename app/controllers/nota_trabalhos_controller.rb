class NotaTrabalhosController < ApplicationController
  before_action :set_nota_trabalho, only: [:show, :edit, :update, :destroy]

  # GET /nota_trabalhos
  # GET /nota_trabalhos.json
  def index
    @nota_trabalhos = NotaTrabalho.all
  end

  # GET /nota_trabalhos/1
  # GET /nota_trabalhos/1.json
  def show
  end

  # GET /nota_trabalhos/new
  def new
    @nota_trabalho = NotaTrabalho.new
  end

  # GET /nota_trabalhos/1/edit
  def edit
  end

  # POST /nota_trabalhos
  # POST /nota_trabalhos.json
  def create
    @nota_trabalho = NotaTrabalho.new(nota_trabalho_params)

    respond_to do |format|
      if @nota_trabalho.save
        format.html { redirect_to @nota_trabalho, notice: 'Nota trabalho was successfully created.' }
        format.json { render :show, status: :created, location: @nota_trabalho }
      else
        format.html { render :new }
        format.json { render json: @nota_trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota_trabalhos/1
  # PATCH/PUT /nota_trabalhos/1.json
  def update
    respond_to do |format|
      if @nota_trabalho.update(nota_trabalho_params)
        format.html { redirect_to @nota_trabalho, notice: 'Nota trabalho was successfully updated.' }
        format.json { render :show, status: :ok, location: @nota_trabalho }
      else
        format.html { render :edit }
        format.json { render json: @nota_trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_trabalhos/1
  # DELETE /nota_trabalhos/1.json
  def destroy
    @nota_trabalho.destroy
    respond_to do |format|
      format.html { redirect_to nota_trabalhos_url, notice: 'Nota trabalho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_trabalho
      @nota_trabalho = NotaTrabalho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_trabalho_params
      params.require(:nota_trabalho).permit(:aluno_id, :trabalho_id, :notag1, :notag2)
    end
end
