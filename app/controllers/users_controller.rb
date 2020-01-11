class UsersController < ApplicationController
  #一覧表示をする時はindexアクション
  def index
    @users = User.all
  end

  #新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  #追加するためのアクション
  def create
     User.create(user_params)
  end

  #詳細情報のためのアクション
  def show
    @user = User.find(params[:id])
  end

  #編集するためのアクション
  def edit
     @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private

  def user_params
    params.require(:user).permit(:name,:age)
  end
end
