class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
	  session[:logged] = true
      redirect_to root_url, notice: "Logged in!"
    else
	  session[:logged] = false
      flash.now[:alert] = "Email or password is invalid"
      render "new"
	  
    end
  end
  def destroy
    session[:logged] = false
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end