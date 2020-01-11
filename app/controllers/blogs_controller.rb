class BlogsController < ApplicationController
  def index
    @blogs=Blog.all
  end

  def show
  end

  def new
  	@blog = Blog.new #空のモデル(Blog)を生成
  end

  def create
  	blog=Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end

  def edit
  end

  private

  def blog_params
  params.require(:blog).permit(:title, :category, :body)
  end

end
