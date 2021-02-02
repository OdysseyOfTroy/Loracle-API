class ContainersController < ApplicationController
  before_action :set_container, only: %i[ show update destroy ]

  # GET /containers
  # GET /containers.json
  def index
    @containers = Container.all
  end

  # GET /containers/1
  # GET /containers/1.json
  def show
  end

  # POST /containers
  # POST /containers.json
  def create
    @container = Container.new(container_params)

    if @container.save
      render :show, status: :created, location: @container
    else
      render json: @container.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /containers/1
  # PATCH/PUT /containers/1.json
  def update
    if @container.update(container_params)
      render :show, status: :ok, location: @container
    else
      render json: @container.errors, status: :unprocessable_entity
    end
  end

  # DELETE /containers/1
  # DELETE /containers/1.json
  def destroy
    @container.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_container
      @container = Container.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def container_params
      params.require(:container).permit(:Title, :description)
    end
end
