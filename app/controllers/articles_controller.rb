class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(create_params)
    redirect_to action: :index
  end

  def create_params
    params.require(:article).permit(:title, :text)
  end

end
