class Resource < ActiveRecord::Base
  attr_accessible :category, :description, :featured, :featured_rank, :out_link, :rank, :title
end
