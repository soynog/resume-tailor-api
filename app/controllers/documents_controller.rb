#
class DocumentsController < ProtectedController
  before_action :set_document, only: [:show, :update, :destroy]
  # skip_before_action :authenticate, only: []

  # GET /documents
  # Show all documents belonging to current user
  def index
    @documents = user_documents
    render json: @documents, include: ['children.**', 'versions.sections']
  end

  # GET /documents/1
  # Show identified document if it belongs to current user
  def show
    # include: '**' Recursively includes all section associations.
    render json: @document, include: '*.*.*'
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)
    if @document.save
      render json: @document, status: :created, location: @document
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  # PATCH /documents/1
  # Patch document if it belongs to current user
  def update
    if @document.update(document_params)
      head :no_content
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /documents/1
  # Delete document if it belongs to current user
  def destroy
    @document.destroy
    head :no_content
  end

  private

  # Queries all the documents belonging to the current user.
  def user_documents
    # render json: current_user
    Document.where('user_id = :user', user: current_user.id)
  end

  # Set document only if it belongs to current user
  def set_document
    # @document = user_documents.first
    @document = user_documents.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, :user_id)
  end
end
