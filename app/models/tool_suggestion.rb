class ToolSuggestion < ActiveRecord::Base
  attr_accessible :email, :message, :tool_name, :user_name, :tool_type

  validates :tool_name, :tool_type, presence: true
end
