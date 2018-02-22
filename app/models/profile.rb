class Profile < ApplicationRecord
  belongs_to :user

  # validates :name, :picture, :city, presence: true
  # validates :name, length: { minimum: 2 }


 mount_uploader :picture, ProfilePictureUploader

end
