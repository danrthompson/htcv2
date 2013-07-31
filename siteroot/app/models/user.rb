class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :token_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :lockable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :administrator
  # attr_accessible :title, :body
end
