class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title,:user_id,:content,:category_id,presence:true
  validates :title,length:{minimum:1,maximum:20}
end
