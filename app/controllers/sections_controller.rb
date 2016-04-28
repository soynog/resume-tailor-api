class SectionsController < ProtectedController
  before_action :set_section, only: [:show, :update, :destroy]

  # GET /sections
  # GET /sections.json
  def index
    @sections = Section.all

    render json: @sections
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    render json: @section
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = Section.new(section_params)

    if @section.save
      render json: @section, status: :created, location: @section
    else
      render json: @section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sections/1
  # PATCH/PUT /sections/1.json
  def update
    @section = Section.find(params[:id])

    if @section.update(section_params)
      head :no_content
    else
      render json: @section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section.destroy

    head :no_content
  end

  private

    def set_section
      @section = Section.find(params[:id])
    end

    def section_params
      params.require(:section).permit(:content, :style, :parent_id, :parent_type)
    end
end
