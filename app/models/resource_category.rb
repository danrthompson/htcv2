class ResourceCategory < ActiveRecord::Base
  attr_accessible :title, :rank, :image

  validates :seo_url, presence: true, uniqueness: true

  has_attached_file :image, path: "/#{ENV['S3_PATH_PREFIX']}:class/:attachment/:id_partition/:style/:basename.:extension"

  has_many :resource_categories
  has_many :resources
  belongs_to :resource_category
end
