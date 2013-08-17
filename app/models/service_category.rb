class ServiceCategory < ActiveRecord::Base
  attr_accessible :title, :rank

  has_many :services
end
