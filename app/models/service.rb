class Service < ActiveRecord::Base
  attr_accessible :description, :featured, :featured_rank, :out_link, :rank, :title, :logo, :service_category_id

  has_attached_file :logo, path: "/#{ENV['S3_PATH_PREFIX']}:class/:attachment/:id_partition/:style/:basename.:extension", styles: {thumb: '250x60'}


  validates :title, :description, :rank, :out_link, :logo, presence: true


  belongs_to :service_category
  has_many :service_leads
end
