class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in"
      redirect_to user
    else
      flash.now[:warning] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = "Logged out"
    redirect_to events_path
  end 

end
