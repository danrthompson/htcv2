class Feedback < ActiveRecord::Base
  attr_accessible :email, :message
  attr_accessible :email, :message, :user_id, as: :active_admin

  validates :message, presence: true
  validates :email, format: { with: Devise.email_regexp,
    message: "That was not a valid email." }, allow_blank: true

  belongs_to :user
end
