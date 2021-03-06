class ApplicationController < ActionController::API

  before_action :current_user
  
  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end


  def logged_in?
    !!current_user
  end
end
