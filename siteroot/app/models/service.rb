class Service < ActiveRecord::Base
  attr_accessible :description, :featured, :featured_rank, :out_link, :rank, :subtitle, :title

  belongs_to :service_category
end
