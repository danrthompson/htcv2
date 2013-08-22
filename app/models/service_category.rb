class ServiceCategory < ActiveRecord::Base
  attr_accessible :title, :rank

  validates :seo_url, presence: true, uniqueness: true

  has_many :services
end
