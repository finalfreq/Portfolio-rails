class CategoriesController < ApplicationController
    def index
      @categories = Category.all
    end

    def new
      @category = Category.new
    end

    def edit
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find(params[:id])
      if @category.update(post_params)
        flash[:alert] = "Category Successfully Updated"
        redirect_to category_path(@category)
      else
        render :edit
      end
    end

    def create
      @category = Category.new(post_params)
      if @category.save
        flash[:alert] = "Category Successfully Added"
        redirect_to category_path(@category)
      else
        render :new
      end
    end

    def show
      @category = Category.find(params[:id])
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to categories_path
    end

private
  def post_params
    params.require(:category).permit(:name, :description)
  end
end
