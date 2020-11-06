class UsersController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  def index
    binding.pry
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    #インスタンスをmodelから作成する
    # binding.pry
    @user = User.new(user_params)

    #インスタンスをdbに保存する
    @user.save!

    #jsonとして値を返す
    render :show
  end

  def update
    # 対象のレコードを探す
    @user = User.find(params[:id])
    # 探してきたレコードに対して変更を行う
    @user.update!(user_params)
    # json として値を返す
    render :show
  end

  def destroy
    # 対象のレコードを探す
    @user = User.find(params[:id])
    # 探してきたレコードを削除する
    @user.destroy!
    # json として値を返す
    render :show
  end

  private

    def user_params
      params.require(:user).permit(:name, :account, :email)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
