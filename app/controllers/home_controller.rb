class HomeController < ApplicationController
  before_action :forbid_login_user, {only: [:top]}


  def top
  end

  def list
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(PER)
    @posts = Post.all.search(params[:search]).page(params[:page]).per(PER)
  end

  def list2
    @posts = Post.order(created_at: :desc).page(params[:page]).per(PER)
    @posts = Post.search(params[:search]).page(params[:page]).per(PER)
  end

end
