class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # instantiate a new Article object but don't save
  def new
    @article = Article.new
  end

  # instantiate a new Article and attempt to save
  def create
    @article = Article.new(article_params)

    if @article.save
      # when mutating db or application, make sure to redirect
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
  end

  # acts as a constructor for the form in create. Specifies what fields
  #are allowed
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
