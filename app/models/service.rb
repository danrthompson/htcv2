class Service < ActiveRecord::Base
  attr_accessible :description, :featured, :featured_rank, :out_link, :rank, :title, :logo, :service_category_id, :page_body, :seo_url

  belongs_to :service_category
  has_many :service_leads

  has_attached_file :logo, path: "/#{ENV['S3_PATH_PREFIX']}:class/:attachment/:id_partition/:style/:basename.:extension", styles: {thumb: '250x60'}

  validates :title, :description, :rank, :out_link, :logo, :page_body, presence: true
  validates :seo_url, uniqueness: true, allow_nil: true

  before_save :generate_page_html

  private

  def generate_page_html
    if self.page_body then
      self.page_body_html = Htcv2Formatter.format_as_xhtml(self.page_body)
    else
      self.page_body_html = nil
    end
  end

end
