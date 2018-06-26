class PagesController < ApplicationController
  def index
    @article = Article.all
    @category = Category.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
     if @article.save
       redirect_to root_path
     else
       render 'new'
     end
  end

  private

   def article_params
     params.require(:article).permit(:title, :description, :category_ids => [])
   end
end
