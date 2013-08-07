class ServiceLead < ActiveRecord::Base
  attr_accessible :email, :featured_page, :inquiry_type, :message, :user_name, :service_id

  validates :email, :inquiry_type, :service_id, presence: true

  belongs_to :service
  belongs_to :user
end
