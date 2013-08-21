class VideoRequest < ActiveRecord::Base
  attr_accessible :email, :location, :message, :timeline, :budget
  validates :email, :location, :timeline, presence: true
  validates :email, format: { with: Devise.email_regexp,
    message: "That was not a valid email." }

    belongs_to :user
end
