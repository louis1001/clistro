class ClasesController < ApplicationController
  before_action :set_clase, only: [:show, :edit, :update, :destroy]
  before_action :set_grupos, only: [:new, :edit]

  # GET /clases
  # GET /clases.json
  def index
    @clases = Clase.all
  end

  # GET /clases/1
  # GET /clases/1.json
  def show
  end

  # GET /clases/new
  def new
    @clase = Clase.new
    @clase.user = current_user
  end

  # GET /clases/1/edit
  def edit
  end

  # POST /clases
  # POST /clases.json
  def create
    puts clase_params[:grupo_id]
    puts Grupo.find(clase_params[:grupo_id])
    @clase = Clase.new(clase_params)
    @clase.user = current_user

    respond_to do |format|
      if @clase.save
        format.html { redirect_to "/", notice: 'Clase was successfully created.' }
        format.json { render :show, status: :created, location: @clase }
      else
        format.html { render :new }
        format.json { render json: @clase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clases/1
  # PATCH/PUT /clases/1.json
  def update
    respond_to do |format|
      if @clase.update(clase_params)
        format.html { redirect_to @clase, notice: 'Clase was successfully updated.' }
        format.json { render :show, status: :ok, location: @clase }
      else
        format.html { render :edit }
        format.json { render json: @clase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clases/1
  # DELETE /clases/1.json
  def destroy
    @clase.destroy
    respond_to do |format|
      format.html { redirect_to "/", notice: 'Clase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clase
      @clase = Clase.find(params[:id])
    end

    def set_grupos
      @grupos = {}
      Grupo.all.each { |x|
        @grupos[x.id] = x.get_codigo
      }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clase_params
      params.fetch(:clase, {}).permit(:nombre, :grupo_id)
    end
end
