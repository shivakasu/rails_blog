class LikeArticlesController < ApplicationController
  def create
    LikeArticle.create(user_id:params[:user],article_id:params[:article])
  end

  def destroy
  end
end
