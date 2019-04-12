class SemestresController < ApplicationController
  before_action :set_semestr, only: [:show, :edit, :update, :destroy]

  # GET /semestres
  # GET /semestres.json
  def index
    @semestres = Semestre.all
  end

  # GET /semestres/1
  # GET /semestres/1.json
  def show
  end

  # GET /semestres/new
  def new
    @semestr = Semestre.new
  end

  # GET /semestres/1/edit
  def edit
  end

  # POST /semestres
  # POST /semestres.json
  def create
    @semestr = Semestre.new(semestr_params)

    respond_to do |format|
      if @semestr.save
        format.html { redirect_to @semestr, notice: 'Semestre was successfully created.' }
        format.json { render :show, status: :created, location: @semestr }
      else
        format.html { render :new }
        format.json { render json: @semestr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semestres/1
  # PATCH/PUT /semestres/1.json
  def update
    respond_to do |format|
      if @semestr.update(semestr_params)
        format.html { redirect_to @semestr, notice: 'Semestre was successfully updated.' }
        format.json { render :show, status: :ok, location: @semestr }
      else
        format.html { render :edit }
        format.json { render json: @semestr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semestres/1
  # DELETE /semestres/1.json
  def destroy
    @semestr.destroy
    respond_to do |format|
      format.html { redirect_to semestres_url, notice: 'Semestre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semestr
      @semestr = Semestre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semestr_params
      params.require(:semestr).permit(:nome)
    end
end
