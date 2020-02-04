class ArticlesController < ApplicationController

  ##GET /articles
  def index
    @articles = Article.all
  end 

  ##GET /articles/:id articles#show
  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  ##Strong Parameter
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
