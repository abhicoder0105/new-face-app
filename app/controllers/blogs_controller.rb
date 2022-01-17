class BlogsController < ApplicationController


	def index
		@blogs = Blog.all
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def new
	  @blog = Blog.new
    @categories =Category.all
    @subcategories =[]  
	end

	def create    
		 @blog = current_user.blogs.new(blog_params)
    if @blog.save       
   
      redirect_to root_path     
   	else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  	@blog = Blog.find(params[:id]);
  end

  def update
  	 @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to root_path, status: :see_other
  end


  def get_subcategory    
   @subcategories= SubCategory.where(category_id: params["category_id"])
    render :partial => "sub_category", :object => @subcategories
  end

    private

    def blog_params
      params.require(:blog).permit(:title, :description, :category, :sub_category)
    end 


end
