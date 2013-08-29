class ToolSuggestion < ActiveRecord::Base
  attr_accessible :email, :message, :tool_name, :user_name, :tool_type
  attr_accessible :email, :message, :tool_name, :user_name, :tool_type, :user_id, as: :active_admin

  validates :tool_name, :tool_type, presence: true
  validates :email, format: { with: Devise.email_regexp,
    message: "That was not a valid email." }, allow_blank: true

  belongs_to :user
end
