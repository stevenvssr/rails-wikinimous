class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    # get data from params
    # create a new object with data
    @article = Article.new(article_params)
    # save it
    @article.save
    # redirect to SHOW page
    redirect_to article_path(@article)
  end

  def edit
    # get the id from the params
    # find the restaurant with that id
  end

  def update
    # find restaurant by its id
    # update it with data from params
    # redirect to show page.
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    # find the restaurant with the given id
    # delete it!
    # redirect to index
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
