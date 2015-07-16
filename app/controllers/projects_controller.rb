class ProjectsController < ApplicationController
    load_and_authorize_resource param_method: :project_params
    load_and_authorize_resource :category
    before_action :authenticate_user!

    def new
    end

    def edit
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
        current_user.projects.push(@project)
        respond_to do |format|
          format.html { redirect_to root_path }
          format.js
        end
      else
        flash[:alert] = "Project was unable to be added."
        render :new
      end
    end

    def show

    end

    def destroy
      @project.destroy
      redirect_to category_path(@category)
    end

private
  def project_params
    params.require(:project).permit(:name, :description, :link)
  end
end
