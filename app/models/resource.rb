class Resource < ActiveRecord::Base
  attr_accessible :description, :out_link, :title, :rank, :resource_category_id

  belongs_to :resource_category

  validates :title, :rank, :out_link, presence: true
end