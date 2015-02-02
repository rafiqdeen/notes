class ArticlesController < ApplicationController
  def new

  end

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit

  end

  def update
    @article = Article.find(params[:id])

    @article.update(article_params)
    redirect_to @article
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to root_path
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end
end
