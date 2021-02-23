class IdentifiersController < ApplicationController
  before_action :fetch_user
  before_action :fetch_container
  before_action :fetch_category
  before_action :set_identifier, only: %i[ show update destroy ]

  # GET /identifiers
  # GET /identifiers.json
  def index
    @identifiers = @category.identifiers
  end

  # GET /identifiers/1
  # GET /identifiers/1.json
  def show
  end

  # POST /identifiers
  # POST /identifiers.json
  def create
    @identifier = @category.identifiers.new(identifier_params)

    if @identifier.save
      render :show, status: :created
    else
      render json: @identifier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /identifiers/1
  # PATCH/PUT /identifiers/1.json
  def update
    if @identifier.update(identifier_params)
      render :show, status: :ok
    else
      render json: @identifier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /identifiers/1
  # DELETE /identifiers/1.json
  def destroy
    @identifier.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identifier
      @identifier = Identifier.find(params[:id])
    end

    def fetch_user
      @user = User.find(params[:user_id])
    end

    def fetch_container
      @container = @user.containers.find(params[:container_id])
    end

    def fetch_category
      @category = @container.categories.find(params[:category_id])
    end

    # Only allow a list of trusted parameters through.
    def identifier_params
      params.require(:identifier).permit(:title)
    end
end
