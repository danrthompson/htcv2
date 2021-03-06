class ServiceLead < ActiveRecord::Base
  attr_accessible :email, :featured_page, :inquiry_type_part_1, :inquiry_type_part_2, :message, :user_name, :service_id
  attr_accessible :email, :featured_page, :inquiry_type_part_1, :inquiry_type_part_2, :message, :user_name, :service_id, :user_id, as: :active_admin

  validates :email, :inquiry_type_part_1, :inquiry_type_part_2, :service_id, presence: true
  validates :email, format: { with: Devise.email_regexp,
    message: "That was not a valid email." }

  validate :service_real_and_add_rank

  belongs_to :service
  belongs_to :user

  def self.inquiry_type_1_options
    [
      ["Receive a quote"],
      ["Get more information"],
      ["Schedule a phone call"],
      ["Get in touch"]
    ]
  end

  def self.inquiry_type_2_options
    [
      ["For a campaign I'm planning"],
      ["For a campaign I'm running"],
      ["For a campaign I finished"],
      ["For a project I'd like to do"],
      ["For another reason (other)"]
    ]
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
