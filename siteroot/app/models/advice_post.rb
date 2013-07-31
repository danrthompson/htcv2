class AdvicePost < ActiveRecord::Base
  attr_accessible :post_text

  acts_as_commentable
  has_many :comments, as: :commentable

  def title
  	post_text.truncate(80, separator: ' ')
  end
end
