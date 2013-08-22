class Resource < ActiveRecord::Base
  attr_accessible :description, :out_link, :title

  belongs_to :resource_category
end

# rank
# title
# description
# out_link

# resource_category_id