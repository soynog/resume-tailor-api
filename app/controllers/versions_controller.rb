class VersionsController < ProtectedController
  before_action :set_version, only: [:show, :update, :destroy]

  # GET /versions
  # GET /versions.json
  def index
    @versions = Version.all

    render json: @versions
  end

  # GET /versions/1
  # GET /versions/1.json
  def show
    render json: @version
  end

  # POST /versions
  # POST /versions.json
  def create
    @version = Version.new(version_params)

    if @version.save
      render json: @version, status: :created, location: @version
    else
      render json: @version.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /versions/1
  # PATCH/PUT /versions/1.json
  def update
    @version = Version.find(params[:id])

    if @version.update(version_params)
      head :no_content
    else
      render json: @version.errors, status: :unprocessable_entity
    end
  end

  # DELETE /versions/1
  # DELETE /versions/1.json
  def destroy
    @version.destroy

    head :no_content
  end

  private

    def set_version
      @version = Version.find(params[:id])
    end

    def version_params
      params.require(:version).permit(:name, :document_id)
    end
end
