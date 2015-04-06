class ArticlesController < ApplicationController

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @category
    else
      render "categories/index"
    end
  end

  def create
    @category = Category.find(params[:category_id])
    @article = @category.articles.create(article_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to category_path(@category)
  end

  private
  def article_params
    params.require(:article).permit(:title, :email, :body, :cost_in_dollars)
  end
end

