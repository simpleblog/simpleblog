class ApplicationController < ActionController::Base


  def check_session
     if session[:user_id] == nil
       redirect_to :controller => "admin", :action => "index"
     end
  end
  protect_from_forgery

end
