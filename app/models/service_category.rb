class ServiceCategory < ActiveRecord::Base
  attr_accessible :title, :rank, :seo_url

  validates :title, :rank, :seo_url, presence: true
  validates :seo_url, uniqueness: true

  has_many :services
end
