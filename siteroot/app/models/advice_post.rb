class AdvicePost < ActiveRecord::Base
  attr_accessible :post_text, :image
  validates :post_text, :user_id, presence: true

  acts_as_commentable
  has_many :comments, as: :commentable, dependent: :destroy
  has_attached_file :image, path: '/:class/:attachment/:id_partition/:style/:hash.:extension', styles: {
  	thumb: '150x100',
  	original: '450x300'
  }
  belongs_to :user

  def title
  	post_text.truncate(80, separator: ' ')
  end
end



# /:basename