class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  
  enum gender: { female: 0, male: 1 }
end
