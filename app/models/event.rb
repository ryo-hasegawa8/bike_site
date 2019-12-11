class Event < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  with_options presence: true do
    validates :title
    validates :user_id
  end
end
