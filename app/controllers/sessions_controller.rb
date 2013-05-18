class SessionsController < ApplicationController

def index
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
end

 def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, notice: t('.signed_in')
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: t('.signed_out')
  end
end
