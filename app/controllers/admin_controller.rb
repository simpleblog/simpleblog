class AdminController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @username = params[:username]
    @password = params[:password]
    user = User.find_by_username_and_password(params[:username],params[:password])
    if user
      session[:user_id] = user.id
      redirect_to :controller => "blogs", :action => 'add_blogs'
    else
      redirect_to(:action => "index")
      flash[:notice] = "login failed"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => "index"
    flash[:notice] = "log out success"
  end
end