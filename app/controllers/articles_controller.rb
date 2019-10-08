class ArticlesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @articles = Article.all.order("id DESC").page(params[:page]).per(5)
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(title: article_params[title], text: article_params[text], user_id: current_user.id)
    redirect_to root_path
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
