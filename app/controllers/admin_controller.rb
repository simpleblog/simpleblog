class AdminController < ApplicationController
  def login
    if request.post?
      username = params[:username]
      password = params[:password]
      user = User.find_by_username_and_password(username,password)
      if user
        session[:user_id] = user.id
        redirect_to new_blog_path
        #:controller => "blogs", :action => 'new'
      else
        flash[:notice] = "Login failed!"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => "login"
    flash[:notice] = "log out success"
  end
end