class ServiceLead < ActiveRecord::Base
  attr_accessible :email, :featured_page, :inquiry_type_part_1, :inquiry_type_part_2, :message, :user_name, :service_id

  validates :email, :inquiry_type_part_1, :inquiry_type_part_2, :service_id, presence: true
  validates :email, format: { with: Devise.email_regexp,
    message: "That was not a valid email." }

  validate :service_real_and_add_rank

  belongs_to :service
  belongs_to :user

  def self.inquiry_type_1_options
    [["To receive a quote", 1]]
  end

  def self.inquiry_type_2_options
    [["For a campaign I'm planning", 1]]
  end

  private

  def service_real_and_add_rank
  	this_service = Service.find_by_id(self.service_id)
		if this_service then
	  	self.service_rank = (self.featured_page ? this_service.featured_rank : this_service.rank)
	  else
	  	errors.add(:service, "Does not exist")
		end
  end

end
