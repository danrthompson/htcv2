class Resource < ActiveRecord::Base
  attr_accessible :description, :out_link, :title, :rank, :resource_category_id, :page_body

  belongs_to :resource_category

  validates :title, :rank, :out_link, presence: true

  before_save :generate_page_html

  private

  def generate_page_html
  	if self.page_body then
	  	self.page_body_html = Htcv2Formatter.format_as_xhtml(self.page_body)
	  end
  end


end