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
      if @category.update(category_params)
        flash[:notice] = "Category Successfully Updated"
        redirect_to category_path(@category)
      else
        flash[:alert] = "Category was unable to be added."
        render :edit
      end
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        Admin.first.categories.push(@category)
        flash[:notice] = "Category Successfully Added"
        redirect_to category_path(@category)
      else
        flash[:alert] = "Category was unable to be added."
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
  def category_params
    params.require(:category).permit(:name, :description)
  end
end