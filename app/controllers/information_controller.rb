class InformationController < ApplicationController
  before_action :fetch_user
  before_action :fetch_container
  before_action :fetch_category
  before_action :fetch_identifier
  before_action :set_information, only: %i[ show update destroy ]

  # GET /information
  # GET /information.json
  def index
    @information = @identifier.information
  end

  # GET /information/1
  # GET /information/1.json
  def show
  end

  # POST /information
  # POST /information.json
  def create
    @information = @identifier.information.new(information_params)

    if @information.save
      render :show, status: :created
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /information/1
  # PATCH/PUT /information/1.json
  def update
    if @information.update(information_params)
      render :show, status: :ok
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

    def fetch_user
      @user = User.find(params[:user_id])
    end

    def fetch_container
      @container = @user.containers.find(params[:container_id])
    end

    def fetch_category
      @category = @container.categories.find(params[:category_id])
    end

    def fetch_identifier
      @identifier = @category.identifiers.find(params[:identifier_id])
    end

    # Only allow a list of trusted parameters through.
    def information_params
      params.require(:information).permit(:infoTitle, :info)
    end
end
