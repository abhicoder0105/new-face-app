class BlogsController < ApplicationController


	def index
		@blogs = Blog.all
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def new
	  @blog = Blog.new
    @categories= Category.all   
    @sub_categories =[]  
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
    category_id = Category.where(category: params["category_id"]).first.id
    @subcategories= SubCategory.where(category_id: category_id )
    respond_to do |format|    
      format.json  { render :json =>  @subcategories }
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :description, :category, :sub_category)
    end 
    
end
