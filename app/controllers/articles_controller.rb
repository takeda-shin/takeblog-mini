class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order("id DESC").page(params[:page]).per(5)
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to root_path
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
