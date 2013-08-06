class ServiceCategory < ActiveRecord::Base
  attr_accessible :title

  has_many :services
end
