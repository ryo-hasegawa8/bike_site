class Event < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  mount_uploader :avatar, AvatarUploader

=======
  mount_uploader :image, ImageUploader
  # default_scope -> { order(created_at: :desc) }
>>>>>>> event_page
  with_options presence: true do
    validates :title
    validates :user_id
  end
end
