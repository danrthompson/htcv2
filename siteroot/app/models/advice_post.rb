class AdvicePost < ActiveRecord::Base
  attr_accessible :post_text, :image
  validates :post_text, :user_id, presence: true

  acts_as_commentable
  has_many :comments, as: :commentable, dependent: :destroy
  has_attached_file :image, path: '/:class/:attachment/:id_partition/:style/:hash.:extension', styles: {
  	thumb: '150x100',
  	original: '450x300'
  }

  process_in_background :image, processing_image_url: "https://s3.amazonaws.com/HarnessTheCrowd/HTC-LOGO-SIDE-TRANSPARENT.png"

  validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }, size: { in: 0..1000.kilobytes }
  
  belongs_to :user

  def title
  	post_text.truncate(80, separator: ' ')
  end
end



# /:basename