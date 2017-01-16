class LikeArticlesController < ApplicationController
  def create
    LikeArticle.create(user_id:params[:user],article_id:params[:article])
    @article=Article.find(params[:article])
    respond_to do |format|
      format.html { redirect_to @article}
      format.js   {}
      format.json { render json: @article, status: :created, location: @article }
    end
  end

  def destroy
    LikeArticle.where(user_id:params[:user],article_id:params[:article]).find_each do |cate|
      cate.destroy
    end
    @article=Article.find(params[:article])
    respond_to do |format|
      format.html { redirect_to @article }
      format.js   {}
      format.json { render json: @article, status: :created, location: @article }
    end
  end
end
