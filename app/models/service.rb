class Service < ActiveRecord::Base
  attr_accessible :description, :featured, :featured_rank, :out_link, :rank, :subtitle, :title, :logo

  has_attached_file :logo, path: '/:class/:attachment/:id_partition/:style/:basename.:extension', styles: {thumb: '250x60'}

  process_in_background :logo, processing_image_url: "https://s3.amazonaws.com/HarnessTheCrowd/admin_uploads/processing-img.png"


  belongs_to :service_category
  has_many :service_leads
end
