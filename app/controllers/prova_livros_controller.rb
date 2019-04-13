class ProvaLivrosController < ApplicationController
  before_action :set_prova_livro, only: [:show, :edit, :update, :destroy]

  # GET /prova_livros
  # GET /prova_livros.json
  def index
    @prova_livros = ProvaLivro.all
  end

  # GET /prova_livros/1
  # GET /prova_livros/1.json
  def show
  end

  # GET /prova_livros/new
  def new
    @prova_livro = ProvaLivro.new
  end

  # GET /prova_livros/1/edit
  def edit
  end

  # POST /prova_livros
  # POST /prova_livros.json
  def create
    @prova_livro = ProvaLivro.new(prova_livro_params)

    respond_to do |format|
      if @prova_livro.save
        format.html { redirect_to @prova_livro, notice: 'Prova livro was successfully created.' }
        format.json { render :show, status: :created, location: @prova_livro }
      else
        format.html { render :new }
        format.json { render json: @prova_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prova_livros/1
  # PATCH/PUT /prova_livros/1.json
  def update
    respond_to do |format|
      if @prova_livro.update(prova_livro_params)
        format.html { redirect_to @prova_livro, notice: 'Prova livro was successfully updated.' }
        format.json { render :show, status: :ok, location: @prova_livro }
      else
        format.html { render :edit }
        format.json { render json: @prova_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prova_livros/1
  # DELETE /prova_livros/1.json
  def destroy
    @prova_livro.destroy
    respond_to do |format|
      format.html { redirect_to prova_livros_url, notice: 'Prova livro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prova_livro
      @prova_livro = ProvaLivro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prova_livro_params
      params.require(:prova_livro).permit(:livro_id, :aluno_id, :nota)
    end
end
