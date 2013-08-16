class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :omniauthable, :confirmable
  devise :database_authenticatable, :token_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :administrator, :username
  # attr_accessible :title, :body

  validates :username, presence: true, uniqueness: true

  has_many :advice_posts
  has_many :comments
  has_many :service_leads
end
