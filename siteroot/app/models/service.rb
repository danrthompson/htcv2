class Service < ActiveRecord::Base
  attr_accessible :category, :description, :featured, :featured_rank, :out_link, :rank, :subtitle, :title
end
