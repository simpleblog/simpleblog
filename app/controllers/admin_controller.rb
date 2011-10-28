class AdminController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @username = params[:username]
    @password = params[:password]
    user = User.find_by_username_and_password(params[:username],params[:password])
    if user
      redirect_to :action => 'add_blogs'
    else
      redirect_to(:action => "index")
      flash[:notice] = "login failed"
    end
  end

  def logout
    redirect_to :action => "index"
    flash[:notice] = "log out success"
  end

  def add_blogs
    @blogs = Blog.find(:all)
    @new_blog = Blog.new
  end

  def create
    @new_blog = Blog.new(params[:blog])
    @id = @new_blog.id
    if @new_blog.save
      flash[:notice] = @new_blog.title
      redirect_to :controller => 'admin',:action => 'add_blogs',:id => @id
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
      redirect_to :controller => "admin" ,:action => "add_blogs"
    end
  end
end
