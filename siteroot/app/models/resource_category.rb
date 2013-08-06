class ResourceCategory < ActiveRecord::Base
  attr_accessible :title, :rank

  has_many :resource_categories
  has_many :resources
  belongs_to :resource_category
end
