class CategoriesController < ApplicationController
	before_action :set_category, only: [:show, :destroy, :edit, :update]
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		flash[:success] = "This category is successfully created."
  		redirect_to categories_path
  	else
  		render 'new'
  	end
  end

  def show
   
  end

  def edit
  	
  end

  def update  	
  	if @category.update(category_params)
  		flash[:success] = "This category is successfully updated."
		redirect_to categories_path
	else
		render 'edit'
	end
  end
  
  def destroy
  	@category.destroy
  	flash[:danger] = "This category is successfully deleted."
  	redirect_to categories_path
  end

  private
  def category_params
  	params.require(:category).permit(:name, :description, :code)
  end
  def set_category
  	@category = Category.find(params[:id])
  end
end