class CategoriesController < ApplicationController
    def index
      @category = Category.find(params[:category_id])
      @projects = @category.projects
    end

    def new
      @category = Category.find(params[:category_id])
      @project = @category.projects.new
    end

    def edit
      @category = Category.find(params[:category_id])
      @project = Project.find(params[:id])
    end

    def update
      @category = Category.find(params[:category_id])
      @project = Project.find(params[:id])
      if @category.update(post_params)
        flash[:notice] = "Category Successfully Updated"
        redirect_to category_path(@category)
      else
        flash[:alert] = "Category was unable to be added."
        render :edit
      end
    end

    def create
      @category = Category.find(params[:category_id])
      @project = @category.projects.new(project_params)
      if @category.save
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
  def project_params
    params.require(:category).permit(:name, :description, :link)
  end
end
