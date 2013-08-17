class Resource < ActiveRecord::Base
  attr_accessible :description, :featured, :featured_rank, :out_link, :rank, :title

  belongs_to :resource_category
end
