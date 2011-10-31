class BlogsController < ApplicationController
  before_filter :check_session
  skip_before_filter :check_session, :only => [:index]
  def index
    @blogs = Blog.all;
  end
  def new
    @blogs = Blog.find(:all)
    @new_blog = Blog.new
  end

  def create
    @new_blog = Blog.new(params[:blog])
    @id = @new_blog.id
    if @new_blog.save
      flash[:notice] = @new_blog.title
      redirect_to :action => 'new',:id => @id
    end
  end

  def edit
    @id = params[:id]
    @edit_blog = Blog.find(@id)
    @blogs = Blog.find(:all)
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      flash[:notice] = "Edit Success!"
      redirect_to :action => "new"
    end
  end
end

