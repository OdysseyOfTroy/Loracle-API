class InformationController < ApplicationController
  before_action :set_information, only: %i[ show update destroy ]

  # GET /information
  # GET /information.json
  def index
    @information = Information.all
  end

  # GET /information/1
  # GET /information/1.json
  def show
  end

  # POST /information
  # POST /information.json
  def create
    @information = Information.new(information_params)

    if @information.save
      render :show, status: :created, location: @information
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /information/1
  # PATCH/PUT /information/1.json
  def update
    if @information.update(information_params)
      render :show, status: :ok, location: @information
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  # DELETE /information/1
  # DELETE /information/1.json
  def destroy
    @information.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information
      @information = Information.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def information_params
      params.require(:information).permit(:infoTitle, :info)
    end
end
