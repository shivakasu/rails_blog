class CategoriesController < ApplicationController
  def show
    @category=Category.find(params[:id])
    if @category.id.to_int<5
      @categories=Category.find([1,2,3,4])
      @title="SHIVA@GUN"
    else
      @categories=Category.find([5,6,7,8])
      @title="SHIVA@FUN"
    end
    @articles=@category.articles.order("created_at DESC")
  end
end
