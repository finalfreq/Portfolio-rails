class CategoriesController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource param_method: :category_params
    load_and_authorize_resource :user

    def index
    end

    def new
    end

    def edit
    end

    def update
      if @category.update(category_params)
        flash[:notice] = "Category Successfully Updated"
        redirect_to category_path(@category)
      else
        flash[:alert] = "Category was unable to be updated."
        render :edit
      end
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        respond_to do |format|
          format.html { redirect_to @category}
          format.js
        end
      else
        flash[:alert] = "Category was unable to be added."
        render :new
      end
    end

    def show
    end

    def destroy
      @category.destroy
      redirect_to categories_path
    end

private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
