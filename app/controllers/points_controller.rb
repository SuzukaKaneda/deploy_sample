class PointsController < ApplicationController
    def create
    @user = User.find(params[:user_id])
    @point = @user.points.build(add: params[:add])
  
    if @point.save
      redirect_to user_path(@user), notice: 'ポイントが加算されました。'
    else
      render :new
    end
  end
end
