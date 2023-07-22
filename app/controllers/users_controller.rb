class UsersController < ApplicationController
  def index
    @users = User.all #ユーザー全体の情報を取得
  end

  def new
    @user = User.new #ユーザー情報を作成
  end

  def create
    @user = User.new(params.require(:user).permit(:title,:start,:end,:memo))
    if @user.save
      redirect_to :users
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:title,:start,:end,:created_at,:memo))
      redirect_to :users
    else
      render "edit"
    end
  end

  def update
  end

  def destroy
  end

end
