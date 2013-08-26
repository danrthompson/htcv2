class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :omniauthable, :confirmable
  devise :database_authenticatable, :token_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  # attr_accessible :title, :body

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :community_posts
  has_many :comments
  has_many :service_leads
  has_many :feedbacks
  has_many :tool_suggestions
  has_many :video_requests
end
