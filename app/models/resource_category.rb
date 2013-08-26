class ResourceCategory < ActiveRecord::Base
  attr_accessible :title, :rank, :image, :resource_category_id, :seo_url

  before_validation :change_blank_to_nil

	validates :seo_url, uniqueness: true, allow_nil: true

  validates :title, :rank, :image, presence: true

  has_attached_file :image, path: "/#{ENV['S3_PATH_PREFIX']}:class/:attachment/:id_partition/:style/:basename.:extension"

  has_many :resource_categories
  has_many :resources
  belongs_to :resource_category

  protected

  def change_blank_to_nil

  end
end
