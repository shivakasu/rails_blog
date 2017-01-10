class ArticlesController < ApplicationController
  def index
  end

  def show
    @article=Article.find(params[:id])
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
