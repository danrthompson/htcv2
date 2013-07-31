class AdvicePost < ActiveRecord::Base
  attr_accessible :post_text, :title

  acts_as_commentable
  has_many :comments, as: :commentable
end
