class CategoriesController < ApplicationController
  def new
   @category = Category.new
  end

 def create    
     @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
      # end    
    else
      render :new, status: :unprocessable_entity
    end
  end

   private

    def category_params
      params.require(:category).permit(:category)
    end

   


end
