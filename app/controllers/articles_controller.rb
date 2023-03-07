class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
  end

  def new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, status: :see_other
  end
end
