class Feedback < ActiveRecord::Base
  attr_accessible :email, :message

  validates :message, presence: true
  validates :email, format: { with: Devise.email_regexp,
    message: "That was not a valid email." }, allow_blank: true

  belongs_to :user
end
