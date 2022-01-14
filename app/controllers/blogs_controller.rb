class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def new
	  @blog = Blog.new
	end

	def create
		 @blog = current_user.blogs.new(blog_params)

    if @blog.save 
     redirect_to root_path
   	else
      render :new, status: :unprocessable_entity
    end
  end

    private

    def blog_params
      params.require(:blog).permit(:title, :description)
    end


end
