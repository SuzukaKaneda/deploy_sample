class SessionsController < ApplicationController
  def new
  end

  def create
  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    log_in user
    flash[:success] = "ログインしました"
    
    # AJAXの場合はリダイレクト先のURLをJSONで返す
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { render json: { redirect_url: root_url } }
    end
  else
    render 'new'
  end
end

  def destroy
    log_out if logged_in?
    flash[:success] = "ログアウトしました"
    redirect_to root_url
  end
end
