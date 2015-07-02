class ProjectsController < ApplicationController
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
      if @project.update(project_params)
        flash[:notice] = "Project Successfully Updated"
        redirect_to category_project_path(@category, @project)
      else
        flash[:alert] = "Project was unable to be updated."
        render :edit
      end
    end

    def create
      @category = Category.find(params[:category_id])
      @project = @category.projects.new(project_params)
      if @project.save
        flash[:notice] = "Project Successfully Added"
        redirect_to category_project_path(@category, @project)
      else
        flash[:alert] = "Project was unable to be added."
        render :new
      end
    end

    def show
      @category = Category.find(params[:category_id])
      @project = Project.find(params[:id])
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      redirect_to category_path(@project.category)
    end

private
  def project_params
    params.require(:project).permit(:name, :description, :link)
  end
end
