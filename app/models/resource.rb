class Resource < ActiveRecord::Base
  attr_accessible :description, :out_link, :title, :rank, :resource_category_id, :page_body

  belongs_to :resource_category

  validates :title, :rank, :out_link, presence: true
  validates :seo_url, uniqueness: true, allow_nil: true

  before_save :generate_page_html

  def parent_resource_category
    res_cat = self.resource_category
    while res_cat.resource_category do
      res_cat = res_cat.resource_category
    end
    res_cat
  end

  private

  def generate_page_html
  	if self.page_body then
	  	self.page_body_html = Htcv2Formatter.format_as_xhtml(self.page_body)
	  end
  end


end