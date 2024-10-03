class CategoriesController < ApplicationController
  def index
    if params[:search].present?
      @categories = Category.where("name ILIKE ?", params[:search]).or(Category.where("details ILIKE ?", "%#{params[:search]}%"))
    else
      @categories = Category.all
    end
  end

  def show
    find_category
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to category_url(@category)
    else
      render :new
    end
  end

  def edit
    find_category
  end

  def update
    find_category

    if @category.update 
      redirect_to @category
    else 
      render :edit, status: :unprocessable_entity
    end 
  end

  def destroy
    find_category
    @category.destroy 
    redirect_to root_path, status: :see_other
  end

  private

    def find_category
      @category = Category.find(params[:id])
    end

    def category_params

      params.require(:category).permit(:name, :category_id, :details)

    end
end
