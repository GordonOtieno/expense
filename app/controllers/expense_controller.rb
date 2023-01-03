class ExpenseController < ApplicationController
  load_and_authorize_resource

  def index
    # @articles are already loaded...see details in later chapter
  end

  def show
    # the @article to show is already loaded and authorized
  end

  def create
    # the @article to create is already loaded, authorized, and params set from article_params
    @article.create
  end

  def edit
    # the @article to edit is already loaded and authorized
  end

  def update
    # the @article to update is already loaded and authorized
    @article.update(article_params)
  end

  def destroy
    # the @article to destroy is already loaded and authorized
    @article.destroy
  end

  protected

  def article_params
    params.require(:article).permit(:body)
  end
end
