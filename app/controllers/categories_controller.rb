class CategoriesController < ApiController
  before_action :fetch_user
  before_action :fetch_container
  before_action :set_category, only: %i[ show update destroy ]

  # GET /categories
  # GET /categories.json
  def index
    @categories = @container.categories
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = @container.categories.new(category_params)

    if @category.save
      render :show, status: :created
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    if @category.update(category_params)
      render :show, status: :ok
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    def fetch_user
      @user = User.find(params[:user_id])
    end

    def fetch_container
      @container = @user.containers.find(params[:container_id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
