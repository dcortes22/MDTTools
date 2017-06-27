class PlataformsController < ApplicationController
  before_action :set_plataform, only: [:show, :edit, :update, :destroy]

  # GET /plataforms
  # GET /plataforms.json
  def index
    @plataforms = Plataform.all
  end

  # GET /plataforms/1
  # GET /plataforms/1.json
  def show
  end

  # GET /plataforms/new
  def new
    @plataform = Plataform.new
  end

  # GET /plataforms/1/edit
  def edit
  end

  # POST /plataforms
  # POST /plataforms.json
  def create
    @plataform = Plataform.new(plataform_params)

    respond_to do |format|
      if @plataform.save
        format.html { redirect_to @plataform, notice: 'Plataform was successfully created.' }
        format.json { render :show, status: :created, location: @plataform }
      else
        format.html { render :new }
        format.json { render json: @plataform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plataforms/1
  # PATCH/PUT /plataforms/1.json
  def update
    respond_to do |format|
      if @plataform.update(plataform_params)
        format.html { redirect_to @plataform, notice: 'Plataform was successfully updated.' }
        format.json { render :show, status: :ok, location: @plataform }
      else
        format.html { render :edit }
        format.json { render json: @plataform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plataforms/1
  # DELETE /plataforms/1.json
  def destroy
    @plataform.destroy
    respond_to do |format|
      format.html { redirect_to plataforms_url, notice: 'Plataform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plataform
      @plataform = Plataform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plataform_params
      params.require(:plataform).permit(:name)
    end
end
