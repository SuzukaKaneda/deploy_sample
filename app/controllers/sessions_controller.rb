class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password_digest])
      log_in user
      flash[:success] = "ログインしました"
      redirect_to root_url
    else
      flash[:alert] = "ログインできません"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "ログアウトしました"
    redirect_to root_url
  end
end
