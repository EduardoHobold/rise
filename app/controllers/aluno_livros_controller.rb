class AlunoLivrosController < ApplicationController
  before_action :set_aluno_livro, only: [:show, :edit, :update, :destroy]

  # GET /aluno_livros
  # GET /aluno_livros.json
  def index
    @aluno_livros = AlunoLivro.all
  end

  # GET /aluno_livros/1
  # GET /aluno_livros/1.json
  def show
  end

  # GET /aluno_livros/new
  def new
    @aluno_livro = AlunoLivro.new
  end

  # GET /aluno_livros/1/edit
  def edit
  end

  # POST /aluno_livros
  # POST /aluno_livros.json
  def create
    @aluno_livro = AlunoLivro.new(aluno_livro_params)

    respond_to do |format|
      if @aluno_livro.save
        format.html { redirect_to @aluno_livro, notice: 'Aluno livro was successfully created.' }
        format.json { render :show, status: :created, location: @aluno_livro }
      else
        format.html { render :new }
        format.json { render json: @aluno_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aluno_livros/1
  # PATCH/PUT /aluno_livros/1.json
  def update
    respond_to do |format|
      if @aluno_livro.update(aluno_livro_params)
        format.html { redirect_to @aluno_livro, notice: 'Aluno livro was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno_livro }
      else
        format.html { render :edit }
        format.json { render json: @aluno_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluno_livros/1
  # DELETE /aluno_livros/1.json
  def destroy
    @aluno_livro.destroy
    respond_to do |format|
      format.html { redirect_to aluno_livros_url, notice: 'Aluno livro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno_livro
      @aluno_livro = AlunoLivro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_livro_params
      params.require(:aluno_livro).permit(:aluno_id, :livro_id)
    end
end
