class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    # render plain: params[:article].inspect

    # %x( del "C:\\website\\delete - Copy.txt" )
    # %x( packer build "C:\\website\\test_null.json" )

    # system('packer build "C:\\website\\test_null.json"')
    # system('del "C:\\website\\delete - Copy.txt"')

    @article = Article.new(article_params)
    # if @article.save
    # redirect_to @article
    redirect_to welcome_index_path
    # else
    # render 'new'
    # end

  end

  def update
  end

  def destroy
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
