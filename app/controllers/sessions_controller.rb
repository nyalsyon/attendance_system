class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "you are succesfully login"
      redirect_to user_path(user)
    else
      render 'new'
      flash.now[:danger] = "please enter valid username and password"
    end
  end

  def destroy
  end
end
