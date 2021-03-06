class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]

  # GET /samples
  # GET /samples.json
  def index
    @samples = Sample.all
  end

  # GET /samples/1
  # GET /samples/1.json
  def show
  end

  # GET /samples/new
  def new
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
  end

  # POST /samples
  # POST /samples.json
  def create
    copy = params[:copy_from][:id]
    @sample = Sample.new(sample_params)

    respond_to do |format|
      if @sample.save
        unless copy == 0
          sections = Section.joins(:sample).where(samples: {id: copy})
            sections.each do |section|
              new_section = Section.new(section.attributes.merge({id: nil, created_at: nil, updated_at: nil, sample_id: nil}))
              new_section.sample_id = @sample.id
              new_section.plataforms.build()
              new_section.plataforms = section.plataforms
              new_section.save
            end
        end
        format.html { redirect_to @sample, notice: 'Sample was successfully created.' }
        format.json { render :show, status: :created, location: @sample }
      else
        format.html { render :new }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samples/1
  # PATCH/PUT /samples/1.json
  def update
    respond_to do |format|
      if @sample.update(sample_params)
        format.html { redirect_to @sample, notice: 'Sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample }
      else
        format.html { render :edit }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samples/1
  # DELETE /samples/1.json
  def destroy
    @sample.destroy
    respond_to do |format|
      format.html { redirect_to samples_url, notice: 'Sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def configuration
    @sample = Sample.find_by(token: params[:token])
    @components = @sample.sections.order(order: :asc).group_by{ |c| c.component.name} unless @sample.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample
      @sample = Sample.find(params[:id])
      @components = @sample.sections.order(order: :asc).group_by{ |c| c.component.name}
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_params
      params.require(:sample).permit(:name, :color)
    end
end
