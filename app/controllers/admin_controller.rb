class AdminController < ApplicationController
  def index
    @user = User.new
  end
  def login
  #  if request.post?
    @username = params[:username]
    @password = params[:password]
      user=User.find_by_username_and_password(params[:username],params[:password])
      #@pass = user.password
      if user

          redirect_to :action => 'addblogs'
      else
          redirect_to(:action => "index")
          flash[:notice]="登录失败！"
      end

  end
  def show



  end
  def logout
    redirect_to:action=>"index"
    flash[:notice]="注销成功"

  end


  def addblogs
    @blog= Blog.find(:all)
    @newblog=Blog.new



  end

  def create
  @newblog = Blog.new(params[:blog])
  @id=@newblog.id
    if @newblog.save
      flash[:notice]=@newblog.title
      redirect_to :controller => 'admin',:action=>'addblogs',:id=>@id
    end
  end
end