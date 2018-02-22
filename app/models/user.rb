class User < ApplicationRecord
  has_one :profile
  has_many :status_updates
  has_many :memberships
  has_many :groups, through: :memberships
  #This is a has- many -through#

 after_commit :create_profile

def create_profile
  Profile.create(user_id: self.id)
end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
