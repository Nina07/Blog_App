class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "nina", password: "secret",
  except: [:index, :show]
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @new_comment = @article.comments.build
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params) #initialize a new obj in the model with params from request. 
    if @article.save #save that obj in db
      redirect_to @article #redirect to that object
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title,:text)
  end
end
